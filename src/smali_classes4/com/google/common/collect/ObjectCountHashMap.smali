.class Lcom/google/common/collect/ObjectCountHashMap;
.super Ljava/lang/Object;
.source "ObjectCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ObjectCountHashMap$MapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field transient keys:[Ljava/lang/Object;

.field private transient loadFactor:F

.field transient modCount:I

.field transient size:I

.field private transient table:[I

.field private transient threshold:I

.field transient values:[I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    .line 114
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 129
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(IF)V

    .line 130
    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    .line 134
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ObjectCountHashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ObjectCountHashMap",
            "<+TK;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    .line 118
    invoke-virtual {p1}, Lcom/google/common/collect/ObjectCountHashMap;->firstIndex()I

    move-result v0

    :goto_10
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 119
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ObjectCountHashMap;->put(Ljava/lang/Object;I)I

    .line 118
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->nextIndex(I)I

    move-result v0

    goto :goto_10

    .line 121
    :cond_23
    return-void
.end method

.method public static create()Lcom/google/common/collect/ObjectCountHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ObjectCountHashMap",
            "<TK;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/ObjectCountHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/ObjectCountHashMap",
            "<TK;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .registers 4

    .line 250
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static getNext(J)I
    .registers 4

    .line 255
    long-to-int v0, p0

    return v0
.end method

.method private hashTableMask()I
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newEntries(I)[J
    .registers 5

    .line 157
    new-array v0, p0, [J

    .line 158
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 159
    return-object v0
.end method

.method private static newTable(I)[I
    .registers 3

    .line 151
    new-array v0, p0, [I

    .line 152
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 153
    return-object v0
.end method

.method private remove(Ljava/lang/Object;I)I
    .registers 11
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 408
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v0

    and-int v5, v0, p2

    .line 409
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    aget v2, v0, v5

    .line 410
    if-ne v2, v1, :cond_10

    move v0, v4

    .line 436
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 415
    :goto_11
    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v6, v3, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v3

    if-ne v3, p2, :cond_59

    .line 416
    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 417
    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aget v3, v3, v2

    .line 419
    if-ne v0, v1, :cond_48

    .line 421
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v1

    aput v1, v0, v5

    .line 427
    :goto_37
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ObjectCountHashMap;->moveLastEntry(I)V

    .line 428
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 429
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    move v0, v3

    .line 430
    goto :goto_f

    .line 424
    :cond_48
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v4, v1, v0

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/google/common/collect/ObjectCountHashMap;->swapNext(JI)J

    move-result-wide v4

    aput-wide v4, v1, v0

    goto :goto_37

    .line 434
    :cond_59
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v6, v0, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v3

    .line 435
    if-ne v3, v1, :cond_65

    move v0, v4

    .line 436
    goto :goto_f

    :cond_65
    move v0, v2

    move v2, v3

    .line 435
    goto :goto_11
.end method

.method private resizeMeMaybe(I)V
    .registers 5

    .line 327
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    array-length v1, v0

    .line 328
    if-le p1, v1, :cond_17

    .line 329
    const/4 v0, 0x1

    ushr-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 330
    if-gez v0, :cond_12

    .line 331
    const v0, 0x7fffffff

    .line 333
    :cond_12
    if-eq v0, v1, :cond_17

    .line 334
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ObjectCountHashMap;->resizeEntries(I)V

    .line 337
    :cond_17
    return-void
.end method

.method private resizeTable(I)V
    .registers 14

    .line 356
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 357
    array-length v0, v0

    .line 358
    const/high16 v1, 0x40000000  # 2.0f

    if-lt v0, v1, :cond_d

    .line 359
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    .line 378
    :goto_c
    return-void

    .line 362
    :cond_d
    int-to-float v0, p1

    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 363
    invoke-static {p1}, Lcom/google/common/collect/ObjectCountHashMap;->newTable(I)[I

    move-result-object v2

    .line 364
    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 366
    array-length v4, v2

    .line 367
    const/4 v0, 0x0

    :goto_1a
    iget v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    if-ge v0, v5, :cond_3c

    .line 368
    aget-wide v6, v3, v0

    .line 369
    invoke-static {v6, v7}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v5

    .line 370
    add-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v5

    .line 371
    aget v7, v2, v6

    .line 372
    aput v0, v2, v6

    .line 373
    int-to-long v8, v5

    int-to-long v6, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    const/16 v5, 0x20

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    aput-wide v6, v3, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 376
    :cond_3c
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    .line 377
    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    goto :goto_c
.end method

.method private static swapNext(JI)J
    .registers 9

    .line 260
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public clear()V
    .registers 6

    const/4 v4, 0x0

    .line 487
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    .line 488
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    invoke-static {v0, v4, v1, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 490
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 491
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 492
    iput v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 493
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 394
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

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

.method ensureCapacity(I)V
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    array-length v0, v0

    if-le p1, v0, :cond_8

    .line 265
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeEntries(I)V

    .line 267
    :cond_8
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    if-lt p1, v0, :cond_1c

    .line 268
    const/4 v0, 0x2

    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 269
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountHashMap;->resizeTable(I)V

    .line 271
    :cond_1c
    return-void
.end method

.method firstIndex()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public get(Ljava/lang/Object;)I
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 398
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 399
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aget v0, v1, v0

    goto :goto_8
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .line 199
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 200
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap$MapEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ObjectCountHashMap$MapEntry;-><init>(Lcom/google/common/collect/ObjectCountHashMap;I)V

    return-object v0
.end method

.method getKey(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 184
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 185
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getValue(I)I
    .registers 3

    .line 189
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .registers 8
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v1, -0x1

    .line 381
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 382
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v3

    and-int/2addr v3, v2

    aget v0, v0, v3

    .line 383
    :goto_e
    if-eq v0, v1, :cond_2a

    .line 384
    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v4, v3, v0

    .line 385
    invoke-static {v4, v5}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v3

    if-ne v3, v2, :cond_25

    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 390
    :goto_24
    return v0

    .line 388
    :cond_25
    invoke-static {v4, v5}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v0

    goto :goto_e

    :cond_2a
    move v0, v1

    .line 390
    goto :goto_24
.end method

.method init(IF)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 137
    if-ltz p1, :cond_3a

    move v0, v1

    :goto_5
    const-string v3, "Initial capacity must be non-negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 138
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_10

    move v2, v1

    :cond_10
    const-string v0, "Illegal load factor"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 139
    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 140
    invoke-static {v0}, Lcom/google/common/collect/ObjectCountHashMap;->newTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    .line 141
    iput p2, p0, Lcom/google/common/collect/ObjectCountHashMap;->loadFactor:F

    .line 143
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 144
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 146
    invoke-static {p1}, Lcom/google/common/collect/ObjectCountHashMap;->newEntries(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 147
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    .line 148
    return-void

    :cond_3a
    move v0, v2

    .line 137
    goto :goto_5
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .registers 11
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    int-to-long v2, p4

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    const-wide v4, 0xffffffffL

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 321
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 322
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aput p3, v0, p1

    .line 323
    return-void
.end method

.method moveLastEntry(I)V
    .registers 10

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 449
    if-ge p1, v2, :cond_4a

    .line 451
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v1, v0, v2

    aput-object v1, v0, p1

    .line 452
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aget v3, v1, v2

    aput v3, v1, p1

    .line 453
    aput-object v4, v0, v2

    .line 454
    aput v5, v1, v2

    .line 457
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v4, v0, v2

    .line 458
    aput-wide v4, v0, p1

    .line 459
    aput-wide v6, v0, v2

    .line 463
    invoke-static {v4, v5}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v1

    and-int/2addr v1, v0

    .line 464
    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    aget v0, v3, v1

    .line 465
    if-ne v0, v2, :cond_37

    .line 467
    aput p1, v3, v1

    .line 484
    :goto_35
    return-void

    :cond_36
    move v0, v1

    .line 474
    :cond_37
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v1

    .line 475
    if-ne v1, v2, :cond_36

    .line 477
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    invoke-static {v4, v5, p1}, Lcom/google/common/collect/ObjectCountHashMap;->swapNext(JI)J

    move-result-wide v2

    aput-wide v2, v1, v0

    goto :goto_35

    .line 480
    :cond_4a
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aput-object v4, v0, p1

    .line 481
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aput v5, v0, p1

    .line 482
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aput-wide v6, v0, p1

    goto :goto_35
.end method

.method nextIndex(I)I
    .registers 4

    .line 171
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    if-ge v0, v1, :cond_9

    add-int/lit8 v0, p1, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method nextIndexAfterRemove(II)I
    .registers 4

    .line 175
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public put(Ljava/lang/Object;I)I
    .registers 14
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    const/4 v10, -0x1

    .line 275
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 277
    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 278
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 280
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v5

    .line 281
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;->hashTableMask()I

    move-result v0

    and-int v1, v0, v5

    .line 282
    iget v6, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 283
    iget-object v7, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    aget v0, v7, v1

    .line 284
    if-ne v0, v10, :cond_44

    .line 285
    aput v6, v7, v1

    .line 302
    :goto_20
    const v0, 0x7fffffff

    if-eq v6, v0, :cond_67

    .line 305
    add-int/lit8 v0, v6, 0x1

    .line 306
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountHashMap;->resizeMeMaybe(I)V

    .line 307
    invoke-virtual {p0, v6, p1, p2, v5}, Lcom/google/common/collect/ObjectCountHashMap;->insertEntry(ILjava/lang/Object;II)V

    .line 308
    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    .line 309
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->threshold:I

    if-lt v6, v0, :cond_3b

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->table:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountHashMap;->resizeTable(I)V

    .line 312
    :cond_3b
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->modCount:I

    .line 313
    const/4 v0, 0x0

    :goto_42
    return v0

    :cond_43
    move v0, v1

    .line 290
    :cond_44
    aget-wide v8, v2, v0

    .line 292
    invoke-static {v8, v9}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v1

    if-ne v1, v5, :cond_5a

    aget-object v1, v3, v0

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 293
    aget v1, v4, v0

    .line 295
    aput p2, v4, v0

    move v0, v1

    .line 296
    goto :goto_42

    .line 298
    :cond_5a
    invoke-static {v8, v9}, Lcom/google/common/collect/ObjectCountHashMap;->getNext(J)I

    move-result v1

    .line 299
    if-ne v1, v10, :cond_43

    .line 300
    invoke-static {v8, v9, v6}, Lcom/google/common/collect/ObjectCountHashMap;->swapNext(JI)J

    move-result-wide v8

    aput-wide v8, v2, v0

    goto :goto_20

    .line 303
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)I
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 404
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method removeEntry(I)I
    .registers 6

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lcom/google/common/collect/ObjectCountHashMap;->getHash(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method resizeEntries(I)V
    .registers 6

    .line 344
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->keys:[Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    .line 346
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 347
    array-length v1, v0

    .line 348
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 349
    if-le p1, v1, :cond_1e

    .line 350
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 352
    :cond_1e
    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->entries:[J

    .line 353
    return-void
.end method

.method setValue(II)V
    .registers 4

    .line 194
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->values:[I

    aput p2, v0, p1

    .line 196
    return-void
.end method

.method size()I
    .registers 2

    .line 179
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->size:I

    return v0
.end method
