.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$EntryForKey;,
        Lcom/google/common/collect/HashBiMap$EntryForValue;,
        Lcom/google/common/collect/HashBiMap$EntrySet;,
        Lcom/google/common/collect/HashBiMap$Inverse;,
        Lcom/google/common/collect/HashBiMap$InverseEntrySet;,
        Lcom/google/common/collect/HashBiMap$KeySet;,
        Lcom/google/common/collect/HashBiMap$ValueSet;,
        Lcom/google/common/collect/HashBiMap$View;
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
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABSENT:I = -0x1

.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient firstInInsertionOrder:I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient hashTableKToV:[I

.field private transient hashTableVToK:[I

.field private transient inverse:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient lastInInsertionOrder:I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field transient modCount:I

.field private transient nextInBucketKToV:[I

.field private transient nextInBucketVToK:[I

.field private transient nextInInsertionOrder:[I

.field private transient prevInInsertionOrder:[I

.field transient size:I

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field

.field transient values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 107
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/HashBiMap;)I
    .registers 2

    .line 53
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/HashBiMap;)[I
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceValueInEntry(ILjava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/BiMap;)Lcom/google/common/collect/BiMap;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceKeyInEntry(ILjava/lang/Object;Z)V

    return-void
.end method

.method private bucket(I)I
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 57
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 75
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/google/common/collect/HashBiMap;->putAll(Ljava/util/Map;)V

    .line 77
    return-object v0
.end method

.method private static createFilledWithAbsent(I)[I
    .registers 3

    .line 134
    new-array v0, p0, [I

    .line 135
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 136
    return-object v0
.end method

.method private deleteFromTableKToV(II)V
    .registers 8

    const/4 v4, -0x1

    .line 395
    if-eq p1, v4, :cond_1a

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 396
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_1c

    .line 399
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v3, v2, p1

    aput v3, v1, v0

    .line 400
    aput v4, v2, p1

    .line 411
    :goto_19
    return-void

    .line 395
    :cond_1a
    const/4 v0, 0x0

    goto :goto_4

    .line 404
    :cond_1c
    aget v0, v1, v0

    .line 405
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v1, v1, v0

    .line 406
    :goto_22
    if-eq v1, v4, :cond_36

    .line 408
    if-ne v1, p1, :cond_2f

    .line 409
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v2, v1, p1

    aput v2, v1, v0

    .line 410
    aput v4, v1, p1

    goto :goto_19

    .line 407
    :cond_2f
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v2, v0, v1

    move v0, v1

    move v1, v2

    goto :goto_22

    .line 415
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to find entry with key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private deleteFromTableVToK(II)V
    .registers 8

    const/4 v4, -0x1

    .line 423
    if-eq p1, v4, :cond_1a

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 424
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_1c

    .line 427
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v3, v2, p1

    aput v3, v1, v0

    .line 428
    aput v4, v2, p1

    .line 439
    :goto_19
    return-void

    .line 423
    :cond_1a
    const/4 v0, 0x0

    goto :goto_4

    .line 432
    :cond_1c
    aget v0, v1, v0

    .line 433
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v1, v1, v0

    .line 434
    :goto_22
    if-eq v1, v4, :cond_36

    .line 436
    if-ne v1, p1, :cond_2f

    .line 437
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v2, v1, p1

    aput v2, v1, v0

    .line 438
    aput v4, v1, p1

    goto :goto_19

    .line 435
    :cond_2f
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v2, v0, v1

    move v0, v1

    move v1, v2

    goto :goto_22

    .line 443
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to find entry with value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private ensureCapacity(I)V
    .registers 7

    .line 156
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    array-length v1, v0

    if-ge v1, p1, :cond_3a

    .line 157
    array-length v0, v0

    .line 158
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 163
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 164
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 165
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 168
    :cond_3a
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    array-length v0, v0

    if-ge v0, p1, :cond_85

    .line 169
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 170
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 171
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 173
    const/4 v0, 0x0

    :goto_52
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ge v0, v1, :cond_85

    .line 174
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 175
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v4, v3, v1

    aput v4, v2, v0

    .line 177
    aput v0, v3, v1

    .line 179
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 180
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v4, v3, v1

    aput v4, v2, v0

    .line 182
    aput v0, v3, v1

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 185
    :cond_85
    return-void
.end method

.method private static expandAndFillWithAbsent([II)[I
    .registers 5

    .line 141
    array-length v0, p0

    .line 142
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 143
    const/4 v2, -0x1

    invoke-static {v1, v0, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 144
    return-object v1
.end method

.method private insertIntoTableKToV(II)V
    .registers 7

    .line 373
    const/4 v0, -0x1

    if-eq p1, v0, :cond_16

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 374
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v3, v2, v0

    aput v3, v1, p1

    .line 376
    aput p1, v2, v0

    .line 377
    return-void

    .line 373
    :cond_16
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private insertIntoTableVToK(II)V
    .registers 7

    .line 384
    const/4 v0, -0x1

    if-eq p1, v0, :cond_16

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 385
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v3, v2, v0

    aput v3, v1, p1

    .line 387
    aput p1, v2, v0

    .line 388
    return-void

    .line 384
    :cond_16
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private moveEntryToIndex(II)V
    .registers 8

    const/4 v4, -0x1

    .line 584
    if-ne p1, p2, :cond_4

    .line 637
    :goto_3
    return-void

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v0, v0, p1

    .line 588
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v1, v1, p1

    .line 589
    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 590
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 592
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 593
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v3, v2, p1

    .line 595
    aput-object v1, v0, p2

    .line 596
    aput-object v3, v2, p2

    .line 599
    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 600
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    .line 601
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_4f

    .line 602
    aput p2, v1, v0

    .line 610
    :goto_2e
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v1, v0, p1

    aput v1, v0, p2

    .line 616
    aput v4, v0, p1

    .line 619
    invoke-static {v3}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 620
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_5c

    .line 622
    aput p2, v1, v0

    .line 630
    :goto_46
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v1, v0, p1

    aput v1, v0, p2

    .line 636
    aput v4, v0, p1

    goto :goto_3

    .line 604
    :cond_4f
    aget v0, v1, v0

    .line 605
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v1, v1, v0

    .line 608
    :goto_55
    if-ne v1, p1, :cond_70

    .line 609
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aput p2, v1, v0

    goto :goto_2e

    .line 624
    :cond_5c
    aget v0, v1, v0

    .line 625
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v1, v1, v0

    .line 628
    :goto_62
    if-ne v1, p1, :cond_69

    .line 629
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aput p2, v1, v0

    goto :goto_46

    .line 627
    :cond_69
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v2, v0, v1

    move v0, v1

    move v1, v2

    goto :goto_62

    .line 607
    :cond_70
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v2, v0, v1

    move v0, v1

    move v1, v2

    goto :goto_55
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1082
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1083
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 1084
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 1085
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 1086
    return-void
.end method

.method private removeEntry(III)V
    .registers 8

    const/4 v3, 0x0

    .line 554
    const/4 v0, -0x1

    if-eq p1, v0, :cond_39

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 555
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->deleteFromTableKToV(II)V

    .line 556
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->deleteFromTableVToK(II)V

    .line 558
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v0, v0, p1

    .line 559
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v1, v1, p1

    .line 560
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 562
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->moveEntryToIndex(II)V

    .line 563
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v2, v1, -0x1

    aput-object v3, v0, v2

    .line 564
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, v1, -0x1

    aput-object v3, v0, v2

    .line 565
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 566
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 567
    return-void

    .line 554
    :cond_39
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private replaceKeyInEntry(ILjava/lang/Object;Z)V
    .registers 9
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;Z)V"
        }
    .end annotation

    const/4 v4, -0x1

    .line 476
    if-eq p1, v4, :cond_5a

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 477
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v3

    .line 478
    invoke-virtual {p0, p2, v3}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v0

    .line 480
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 481
    const/4 v1, -0x2

    .line 482
    if-eq v0, v4, :cond_26

    .line 483
    if-eqz p3, :cond_5c

    .line 484
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v2, v1, v0

    .line 485
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v1, v1, v0

    .line 486
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    .line 487
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne p1, v3, :cond_26

    move p1, v0

    .line 494
    :cond_26
    if-ne v2, p1, :cond_73

    .line 495
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v2, v2, p1

    .line 500
    :cond_2c
    :goto_2c
    if-ne v1, p1, :cond_79

    .line 501
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v0, v0, p1

    .line 506
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v1, v1, p1

    .line 507
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v3, v3, p1

    .line 508
    invoke-direct {p0, v1, v3}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 510
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->deleteFromTableKToV(II)V

    .line 511
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 512
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    .line 515
    invoke-direct {p0, v2, p1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 517
    return-void

    .line 476
    :cond_5a
    const/4 v0, 0x0

    goto :goto_4

    .line 491
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key already present in map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_73
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne v2, v3, :cond_2c

    move v2, v0

    .line 497
    goto :goto_2c

    .line 502
    :cond_79
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-eq v1, v3, :cond_32

    move v0, v1

    goto :goto_32
.end method

.method private replaceValueInEntry(ILjava/lang/Object;Z)V
    .registers 7
    .param p2  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;Z)V"
        }
    .end annotation

    const/4 v2, -0x1

    .line 451
    if-eq p1, v2, :cond_2e

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 452
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 453
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v0

    .line 454
    if-eq v0, v2, :cond_1b

    .line 455
    if-eqz p3, :cond_30

    .line 456
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    .line 457
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne p1, v2, :cond_1b

    move p1, v0

    .line 465
    :cond_1b
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->deleteFromTableVToK(II)V

    .line 466
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 467
    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    .line 468
    return-void

    .line 451
    :cond_2e
    const/4 v0, 0x0

    goto :goto_4

    .line 461
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value already present in map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSucceeds(II)V
    .registers 5

    const/4 v1, -0x2

    .line 356
    if-ne p1, v1, :cond_a

    .line 357
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    .line 361
    :goto_5
    if-ne p2, v1, :cond_f

    .line 362
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 366
    :goto_9
    return-void

    .line 359
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aput p2, v0, p1

    goto :goto_5

    .line 364
    :cond_f
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aput p1, v0, p2

    goto :goto_9
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1077
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 1078
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 641
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 644
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 645
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 646
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 647
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 648
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 649
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 650
    iput v5, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    .line 651
    iput v5, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 652
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 653
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

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
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

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

    .line 801
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Ljava/util/Set;

    .line 802
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$EntrySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method findEntry(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I
    .registers 9
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v1, -0x1

    .line 222
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    aget v0, p3, v0

    :goto_7
    if-eq v0, v1, :cond_15

    .line 223
    aget-object v2, p5, v0

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 227
    :goto_11
    return v0

    .line 222
    :cond_12
    aget v0, p4, v0

    goto :goto_7

    :cond_15
    move v0, v1

    .line 227
    goto :goto_11
.end method

.method findEntryByKey(Ljava/lang/Object;)I
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 197
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method findEntryByKey(Ljava/lang/Object;I)I
    .registers 9
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 204
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->findEntry(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method findEntryByValue(Ljava/lang/Object;)I
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 209
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method findEntryByValue(Ljava/lang/Object;I)I
    .registers 9
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 217
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->findEntry(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

    move-result v0

    .line 244
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_8
.end method

.method getInverse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 249
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

    move-result v0

    .line 250
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_8
.end method

.method init(I)V
    .registers 5

    const/4 v2, -0x2

    .line 113
    const-string v0, "expectedSize"

    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 114
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v1

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 117
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 118
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 120
    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 121
    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 122
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 123
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 125
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    .line 126
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 128
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 129
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 130
    return-void
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    .line 897
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    :cond_b
    return-object v0
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

    .line 729
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Ljava/util/Set;

    .line 730
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 8
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
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v3, -0x1

    .line 261
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 262
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v2

    .line 263
    if-eq v2, v3, :cond_1b

    .line 264
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, v2

    .line 265
    invoke-static {v0, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 294
    :goto_15
    return-object p2

    .line 268
    :cond_16
    invoke-direct {p0, v2, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceValueInEntry(ILjava/lang/Object;Z)V

    move-object p2, v0

    .line 269
    goto :goto_15

    .line 273
    :cond_1b
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 274
    invoke-virtual {p0, p2, v2}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v0

    .line 275
    if-eqz p3, :cond_5e

    .line 276
    if-eq v0, v3, :cond_2a

    .line 277
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    .line 283
    :cond_2a
    :goto_2a
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->ensureCapacity(I)V

    .line 284
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    aput-object p1, v0, v3

    .line 285
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 287
    invoke-direct {p0, v3, v1}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    .line 288
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    .line 290
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 291
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 292
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 293
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 294
    const/4 p2, 0x0

    goto :goto_15

    .line 280
    :cond_5e
    if-ne v0, v3, :cond_67

    const/4 v0, 0x1

    :goto_61
    const-string v3, "Value already present: %s"

    invoke-static {v0, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2a

    :cond_67
    const/4 v0, 0x0

    goto :goto_61
.end method

.method putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 9
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
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, -0x1

    .line 306
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 307
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v1

    .line 308
    if-eq v1, v0, :cond_1b

    .line 309
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 310
    invoke-static {v0, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 347
    :goto_15
    return-object p2

    .line 313
    :cond_16
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceKeyInEntry(ILjava/lang/Object;Z)V

    move-object p2, v0

    .line 314
    goto :goto_15

    .line 318
    :cond_1b
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 319
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v3

    .line 320
    invoke-virtual {p0, p2, v3}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v4

    .line 321
    if-eqz p3, :cond_66

    .line 322
    if-eq v4, v0, :cond_6e

    .line 323
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v0, v0, v4

    .line 324
    invoke-virtual {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    .line 334
    :goto_30
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->ensureCapacity(I)V

    .line 335
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/collect/HashBiMap;->size:I

    aput-object p2, v1, v4

    .line 336
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 338
    invoke-direct {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    .line 339
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    .line 341
    const/4 v1, -0x2

    if-ne v0, v1, :cond_72

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    .line 343
    :goto_4e
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 344
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 345
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 346
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 347
    const/4 p2, 0x0

    goto :goto_15

    .line 327
    :cond_66
    if-ne v4, v0, :cond_70

    const/4 v0, 0x1

    :goto_69
    const-string v4, "Key already present: %s"

    invoke-static {v0, v4, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_6e
    move v0, v1

    goto :goto_30

    :cond_70
    const/4 v0, 0x0

    goto :goto_69

    .line 341
    :cond_72
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v1, v1, v0

    goto :goto_4e
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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

    .line 523
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 524
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v2

    .line 525
    const/4 v0, -0x1

    if-ne v2, v0, :cond_d

    .line 526
    const/4 v0, 0x0

    .line 530
    :goto_c
    return-object v0

    .line 528
    :cond_d
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, v2

    .line 529
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    goto :goto_c
.end method

.method removeEntry(I)V
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    .line 550
    return-void
.end method

.method removeEntryKeyHashKnown(II)V
    .registers 4

    .line 571
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->removeEntry(III)V

    .line 572
    return-void
.end method

.method removeEntryValueHashKnown(II)V
    .registers 4

    .line 576
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/common/collect/HashBiMap;->removeEntry(III)V

    .line 577
    return-void
.end method

.method removeInverse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 536
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 537
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v2

    .line 538
    const/4 v0, -0x1

    if-ne v2, v0, :cond_d

    .line 539
    const/4 v0, 0x0

    .line 543
    :goto_c
    return-object v0

    .line 541
    :cond_d
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, v2

    .line 542
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    goto :goto_c
.end method

.method public size()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Ljava/util/Set;

    .line 766
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/HashBiMap$ValueSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$ValueSet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Ljava/util/Set;

    :cond_b
    return-object v0
.end method
