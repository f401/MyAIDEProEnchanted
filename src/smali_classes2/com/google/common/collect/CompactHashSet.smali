.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LOAD_FACTOR:F = 1.0f

.field private static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient elements:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient entries:[J
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


# direct methods
.method constructor <init>()V
    .registers 3

    .line 168
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 169
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 170
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 177
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 178
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashSet;)[J
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    return-object v0
.end method

.method static synthetic access$100(J)I
    .registers 4

    .line 67
    invoke-static {p0, p1}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashSet;Ljava/lang/Object;I)Z
    .registers 4

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashSet",
            "<TE;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactHashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/CompactHashSet",
            "<TE;>;"
        }
    .end annotation

    .line 83
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactHashSet;->addAll(Ljava/util/Collection;)Z

    .line 85
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactHashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactHashSet",
            "<TE;>;"
        }
    .end annotation

    .line 96
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 97
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashSet",
            "<TE;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .registers 4

    .line 206
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static getNext(J)I
    .registers 4

    .line 211
    long-to-int v0, p0

    return v0
.end method

.method private hashTableMask()I
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newEntries(I)[J
    .registers 5

    .line 200
    new-array v0, p0, [J

    .line 201
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 202
    return-object v0
.end method

.method private static newTable(I)[I
    .registers 3

    .line 194
    new-array v0, p0, [I

    .line 195
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 196
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 541
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 542
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 543
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 544
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 545
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 546
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Object;I)Z
    .registers 11

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 345
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    and-int v5, v0, p2

    .line 346
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v2, v0, v5

    .line 347
    if-ne v2, v1, :cond_0

    move v0, v4

    .line 369
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 352
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v6, v3, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v3

    if-ne v3, p2, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    if-ne v0, v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    aput v1, v0, v5

    .line 361
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashSet;->moveEntry(I)V

    .line 362
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 363
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 364
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v1, v0

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v3

    invoke-static {v4, v5, v3}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v4

    aput-wide v4, v1, v0

    goto :goto_2

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v6, v0, v2

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v3

    .line 368
    if-ne v3, v1, :cond_3

    move v0, v4

    .line 369
    goto :goto_0

    :cond_3
    move v0, v2

    move v2, v3

    .line 368
    goto :goto_1
.end method

.method private resizeMeMaybe(I)V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v1, v0

    .line 272
    if-le p1, v1, :cond_1

    .line 273
    const/4 v0, 0x1

    ushr-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 274
    if-gez v0, :cond_0

    .line 275
    const v0, 0x7fffffff

    .line 277
    :cond_0
    if-eq v0, v1, :cond_1

    .line 278
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 281
    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .registers 14

    .line 299
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 300
    array-length v0, v0

    .line 301
    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_0

    .line 302
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 321
    :goto_0
    return-void

    .line 305
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 306
    invoke-static {p1}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v2

    .line 307
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 309
    array-length v4, v2

    .line 310
    const/4 v0, 0x0

    :goto_1
    iget v5, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v0, v5, :cond_1

    .line 311
    aget-wide v6, v3, v0

    .line 312
    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v5

    .line 313
    add-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v5

    .line 314
    aget v7, v2, v6

    .line 315
    aput v0, v2, v6

    .line 316
    int-to-long v8, v5

    int-to-long v6, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    const/16 v5, 0x20

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    aput-wide v6, v3, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_1
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 320
    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    goto :goto_0
.end method

.method private static swapNext(JI)J
    .registers 9

    .line 216
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

    .line 532
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 533
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 534
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 535
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v8, -0x1

    .line 226
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 227
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 228
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v4

    .line 229
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    and-int v1, v0, v4

    .line 230
    iget v5, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 231
    iget-object v6, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v0, v6, v1

    .line 232
    if-ne v0, v8, :cond_2

    .line 233
    aput v5, v6, v1

    .line 247
    :goto_0
    const v0, 0x7fffffff

    if-eq v5, v0, :cond_4

    .line 250
    add-int/lit8 v0, v5, 0x1

    .line 251
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 252
    invoke-virtual {p0, v5, p1, v4}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 253
    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 254
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    if-lt v5, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 257
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 258
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 238
    :cond_2
    aget-wide v6, v2, v0

    .line 240
    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v1

    if-ne v1, v4, :cond_3

    aget-object v1, v3, v0

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    const/4 v0, 0x0

    goto :goto_1

    .line 243
    :cond_3
    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    .line 244
    if-ne v1, v8, :cond_1

    .line 245
    invoke-static {v6, v7, v5}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v6

    aput-wide v6, v2, v0

    goto :goto_0

    .line 248
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method adjustAfterRemove(II)I
    .registers 4

    .line 425
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public clear()V
    .registers 6

    const/4 v4, 0x0

    .line 520
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 521
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 523
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 524
    iput v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 525
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 325
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 326
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    and-int/2addr v2, v1

    aget v0, v0, v2

    .line 327
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v2, v2, v0

    .line 329
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v0, v4, v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x1

    .line 334
    :goto_1
    return v0

    .line 332
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v0

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method firstEntryIndex()I
    .registers 2

    .line 412
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSuccessor(I)I
    .registers 4

    .line 416
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method init(IF)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 183
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Initial capacity must be non-negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 184
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Illegal load factor"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 185
    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 186
    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 187
    iput p2, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    .line 188
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Lcom/google/common/collect/CompactHashSet;->newEntries(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 190
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 191
    return-void

    :cond_1
    move v0, v2

    .line 183
    goto :goto_0
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    int-to-long v2, p3

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    const-wide v4, 0xffffffffL

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 266
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 267
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 478
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/google/common/collect/CompactHashSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    return-object v0
.end method

.method moveEntry(I)V
    .registers 10

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 377
    if-ge p1, v2, :cond_2

    .line 379
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v1, v0, v2

    aput-object v1, v0, p1

    .line 380
    aput-object v3, v0, v2

    .line 383
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v0, v2

    .line 384
    aput-wide v4, v0, p1

    .line 385
    aput-wide v6, v0, v2

    .line 389
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v1

    and-int/2addr v1, v0

    .line 390
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v0, v3, v1

    .line 391
    if-ne v0, v2, :cond_1

    .line 393
    aput p1, v3, v1

    .line 409
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    .line 401
    if-ne v1, v2, :cond_0

    .line 403
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    invoke-static {v4, v5, p1}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v2

    aput-wide v2, v1, v0

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object v3, v0, p1

    .line 407
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v6, v0, p1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 340
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method resizeEntries(I)V
    .registers 6

    .line 288
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 290
    array-length v1, v0

    .line 291
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 292
    if-le p1, v1, :cond_0

    .line 293
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 295
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 296
    return-void
.end method

.method public size()I
    .registers 2

    .line 473
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .line 483
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .registers 7

    .line 497
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 498
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 499
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 505
    :cond_0
    const/4 v0, 0x1

    int-to-float v2, v1

    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 506
    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v2, :cond_1

    .line 507
    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 508
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    float-to-double v4, v1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 509
    shl-int/lit8 v0, v0, 0x1

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 514
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 516
    :cond_2
    return-void
.end method
