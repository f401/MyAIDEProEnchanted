.class public final Lcom/google/common/primitives/ImmutableDoubleArray;
.super Ljava/lang/Object;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableDoubleArray$AsList;,
        Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;


# instance fields
.field private final array:[D

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 84
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x0

    new-array v1, v1, [D

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    sput-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-void
.end method

.method private constructor <init>([D)V
    .registers 4

    .line 322
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    .line 323
    return-void
.end method

.method private constructor <init>([DII)V
    .registers 4

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    .line 327
    iput p2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .line 328
    iput p3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    .line 329
    return-void
.end method

.method synthetic constructor <init>([DIILcom/google/common/primitives/ImmutableDoubleArray$1;)V
    .registers 5

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I
    .registers 2

    .line 83
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    return v0
.end method

.method static synthetic access$200()Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 1

    .line 83
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method static synthetic access$500(DD)Z
    .registers 6

    .line 83
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v0

    return v0
.end method

.method private static areEqual(DD)Z
    .registers 8

    .line 524
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .registers 2

    .line 191
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .registers 3

    .line 178
    if-ltz p0, :cond_e

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 179
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0

    .line 178
    :cond_e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 161
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    .line 162
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    .line 164
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/google/common/primitives/ImmutableDoubleArray;->builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->build()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    goto :goto_a
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 150
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {p0}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    goto :goto_8
.end method

.method public static copyOf([D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 3

    .line 143
    array-length v0, p0

    if-nez v0, :cond_6

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    :goto_5
    return-object v0

    :cond_6
    array-length v1, p0

    .line 145
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    goto :goto_5
.end method

.method private isPartialView()Z
    .registers 3

    .line 568
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

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

.method public static of()Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 1

    .line 88
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method public static of(D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 6

    .line 93
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 8

    .line 98
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 10

    .line 103
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 12

    .line 108
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 14

    .line 113
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x5

    new-array v1, v1, [D

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

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 16

    .line 119
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x6

    new-array v1, v1, [D

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

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static varargs of(D[D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    array-length v0, p2

    const v3, 0x7ffffffe

    if-gt v0, v3, :cond_1f

    move v0, v1

    :goto_9
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 135
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    .line 136
    aput-wide p0, v0, v2

    .line 137
    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    new-instance v1, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v1

    :cond_1f
    move v0, v2

    .line 132
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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableDoubleArray;Lcom/google/common/primitives/ImmutableDoubleArray$1;)V

    return-object v0
.end method

.method public contains(D)Z
    .registers 4

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

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

    .line 504
    if-ne p1, p0, :cond_6

    move v1, v2

    .line 519
    :cond_5
    :goto_5
    return v1

    .line 507
    :cond_6
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableDoubleArray;

    if-eqz v0, :cond_5

    .line 510
    check-cast p1, Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 511
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v3

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 514
    :goto_17
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 515
    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v4

    invoke-virtual {p1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2e
    move v1, v2

    .line 519
    goto :goto_5
.end method

.method public get(I)D
    .registers 4

    .line 348
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 349
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 530
    const/4 v0, 0x1

    .line 531
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v1, v2, :cond_15

    .line 532
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 535
    :cond_15
    return v0
.end method

.method public indexOf(D)I
    .registers 8

    .line 358
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    :goto_2
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v0, v1, :cond_17

    .line 359
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 360
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int/2addr v0, v1

    .line 363
    :goto_13
    return v0

    .line 358
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 363
    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public isEmpty()Z
    .registers 3

    .line 338
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public lastIndexOf(D)I
    .registers 8

    .line 372
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-lt v0, v1, :cond_19

    .line 373
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 374
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int/2addr v0, v1

    .line 377
    :goto_15
    return v0

    .line 372
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 377
    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public length()I
    .registers 3

    .line 333
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .registers 2

    .line 576
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    :cond_8
    return-object p0
.end method

.method public subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 7

    .line 401
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 402
    if-ne p1, p2, :cond_c

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    goto :goto_b
.end method

.method public toArray()[D
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 544
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 545
    const-string v0, "[]"

    .line 554
    :goto_8
    return-object v0

    .line 547
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 548
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 550
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_26
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v0, v2, :cond_39

    .line 551
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 553
    :cond_39
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public trimmed()Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 3

    .line 564
    invoke-direct {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toArray()[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    move-object p0, v0

    :cond_10
    return-object p0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .line 572
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->trimmed()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0
.end method
