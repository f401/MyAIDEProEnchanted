.class public final Lcom/google/common/primitives/ImmutableLongArray;
.super Ljava/lang/Object;
.source "ImmutableLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableLongArray$AsList;,
        Lcom/google/common/primitives/ImmutableLongArray$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/primitives/ImmutableLongArray;


# instance fields
.field private final array:[J

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 84
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    sput-object v0, Lcom/google/common/primitives/ImmutableLongArray;->EMPTY:Lcom/google/common/primitives/ImmutableLongArray;

    return-void
.end method

.method private constructor <init>([J)V
    .registers 4

    .line 321
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([JII)V

    .line 322
    return-void
.end method

.method private constructor <init>([JII)V
    .registers 4

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    .line 326
    iput p2, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    .line 327
    iput p3, p0, Lcom/google/common/primitives/ImmutableLongArray;->end:I

    .line 328
    return-void
.end method

.method synthetic constructor <init>([JIILcom/google/common/primitives/ImmutableLongArray$1;)V
    .registers 5

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([JII)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/primitives/ImmutableLongArray;)[J
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/primitives/ImmutableLongArray;)I
    .registers 2

    .line 83
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    return v0
.end method

.method static synthetic access$200()Lcom/google/common/primitives/ImmutableLongArray;
    .registers 1

    .line 83
    sget-object v0, Lcom/google/common/primitives/ImmutableLongArray;->EMPTY:Lcom/google/common/primitives/ImmutableLongArray;

    return-object v0
.end method

.method public static builder()Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .registers 2

    .line 190
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/ImmutableLongArray$Builder;
    .registers 3

    .line 177
    if-ltz p0, :cond_e

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 178
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;-><init>(I)V

    return-object v0

    .line 177
    :cond_e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableLongArray;"
        }
    .end annotation

    .line 160
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    .line 161
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/primitives/ImmutableLongArray;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    .line 163
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/google/common/primitives/ImmutableLongArray;->builder()Lcom/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->build()Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    goto :goto_a
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableLongArray;"
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/common/primitives/ImmutableLongArray;->EMPTY:Lcom/google/common/primitives/ImmutableLongArray;

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    invoke-static {p0}, Lcom/google/common/primitives/Longs;->toArray(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    goto :goto_8
.end method

.method public static copyOf([J)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 3

    .line 142
    array-length v0, p0

    if-nez v0, :cond_6

    sget-object v0, Lcom/google/common/primitives/ImmutableLongArray;->EMPTY:Lcom/google/common/primitives/ImmutableLongArray;

    :goto_5
    return-object v0

    :cond_6
    array-length v1, p0

    .line 144
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    goto :goto_5
.end method

.method private isPartialView()Z
    .registers 3

    .line 560
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    array-length v1, v1

    if-ge v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static of()Lcom/google/common/primitives/ImmutableLongArray;
    .registers 1

    .line 88
    sget-object v0, Lcom/google/common/primitives/ImmutableLongArray;->EMPTY:Lcom/google/common/primitives/ImmutableLongArray;

    return-object v0
.end method

.method public static of(J)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 6

    .line 93
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJ)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 8

    .line 98
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJ)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 10

    .line 103
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x3

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJJ)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 12

    .line 108
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x4

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJJJ)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 14

    .line 113
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x5

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJJJJ)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 16

    .line 118
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x6

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    const/4 v2, 0x5

    aput-wide p10, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static varargs of(J[J)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    array-length v0, p2

    const v3, 0x7ffffffe

    if-gt v0, v3, :cond_1f

    move v0, v1

    :goto_9
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 134
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    .line 135
    aput-wide p0, v0, v2

    .line 136
    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    new-instance v1, Lcom/google/common/primitives/ImmutableLongArray;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v1

    :cond_1f
    move v0, v2

    .line 131
    goto :goto_9
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 417
    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableLongArray;Lcom/google/common/primitives/ImmutableLongArray$1;)V

    return-object v0
.end method

.method public contains(J)Z
    .registers 4

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/ImmutableLongArray;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 501
    if-ne p1, p0, :cond_6

    move v1, v2

    .line 516
    :cond_5
    :goto_5
    return v1

    .line 504
    :cond_6
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableLongArray;

    if-eqz v0, :cond_5

    .line 507
    check-cast p1, Lcom/google/common/primitives/ImmutableLongArray;

    .line 508
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v3

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 511
    :goto_17
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 512
    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableLongArray;->get(I)J

    move-result-wide v4

    invoke-virtual {p1, v0}, Lcom/google/common/primitives/ImmutableLongArray;->get(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2c
    move v1, v2

    .line 516
    goto :goto_5
.end method

.method public get(I)J
    .registers 4

    .line 347
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 348
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 522
    const/4 v0, 0x1

    .line 523
    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/ImmutableLongArray;->end:I

    if-ge v1, v2, :cond_15

    .line 524
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 527
    :cond_15
    return v0
.end method

.method public indexOf(J)I
    .registers 8

    .line 356
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    :goto_2
    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->end:I

    if-ge v0, v1, :cond_15

    .line 357
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_12

    .line 358
    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    sub-int/2addr v0, v1

    .line 361
    :goto_11
    return v0

    .line 356
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 361
    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public isEmpty()Z
    .registers 3

    .line 337
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public lastIndexOf(J)I
    .registers 8

    .line 369
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->end:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    if-lt v0, v1, :cond_15

    .line 370
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_12

    .line 371
    sub-int/2addr v0, v1

    .line 374
    :goto_11
    return v0

    .line 369
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 374
    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public length()I
    .registers 3

    .line 332
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/google/common/primitives/ImmutableLongArray;->EMPTY:Lcom/google/common/primitives/ImmutableLongArray;

    :cond_8
    return-object p0
.end method

.method public subArray(II)Lcom/google/common/primitives/ImmutableLongArray;
    .registers 7

    .line 398
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 399
    if-ne p1, p2, :cond_c

    sget-object v0, Lcom/google/common/primitives/ImmutableLongArray;->EMPTY:Lcom/google/common/primitives/ImmutableLongArray;

    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    iget v2, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([JII)V

    goto :goto_b
.end method

.method public toArray()[J
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableLongArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 536
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 537
    const-string v0, "[]"

    .line 546
    :goto_8
    return-object v0

    .line 539
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 540
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    iget v2, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 542
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_26
    iget v2, p0, Lcom/google/common/primitives/ImmutableLongArray;->end:I

    if-ge v0, v2, :cond_39

    .line 543
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray;->array:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 545
    :cond_39
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public trimmed()Lcom/google/common/primitives/ImmutableLongArray;
    .registers 3

    .line 556
    invoke-direct {p0}, Lcom/google/common/primitives/ImmutableLongArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray;->toArray()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([J)V

    move-object p0, v0

    :cond_10
    return-object p0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .line 564
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray;->trimmed()Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    return-object v0
.end method
