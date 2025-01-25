.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$BooleanArrayAsList;,
        Lcom/google/common/primitives/Booleans$BooleanComparator;,
        Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([ZZII)I
    .registers 5

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([ZZII)I
    .registers 5

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 371
    array-length v0, p0

    if-nez v0, :cond_8

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 374
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([Z)V

    goto :goto_7
.end method

.method public static compare(ZZ)I
    .registers 3

    .line 127
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public static varargs concat([[Z)[Z
    .registers 8

    const/4 v1, 0x0

    .line 235
    .line 236
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v4, p0, v2

    .line 237
    array-length v4, v4

    add-int/2addr v0, v4

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 239
    :cond_d
    new-array v3, v0, [Z

    .line 241
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_12
    if-ge v2, v4, :cond_1f

    aget-object v5, p0, v2

    .line 242
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    array-length v5, v5

    add-int/2addr v0, v5

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 245
    :cond_1f
    return-object v3
.end method

.method public static contains([ZZ)Z
    .registers 6

    const/4 v0, 0x0

    .line 142
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_a

    aget-boolean v3, p0, v1

    .line 143
    if-ne v3, p1, :cond_b

    .line 144
    const/4 v0, 0x1

    .line 147
    :cond_a
    return v0

    .line 142
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static varargs countTrue([Z)I
    .registers 5

    const/4 v1, 0x0

    .line 514
    .line 515
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_10

    aget-boolean v1, p0, v2

    .line 516
    if-eqz v1, :cond_c

    .line 517
    add-int/lit8 v0, v0, 0x1

    .line 515
    :cond_c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 520
    :cond_10
    return v0
.end method

.method public static ensureCapacity([ZII)[Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 263
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 264
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p0

    :cond_1a
    return-object p0

    :cond_1b
    move v0, v2

    .line 262
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 263
    goto :goto_c
.end method

.method public static falseFirst()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->FALSE_FIRST:Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method

.method public static hashCode(Z)I
    .registers 2

    .line 110
    if-eqz p0, :cond_5

    const/16 v0, 0x4cf

    :goto_4
    return v0

    :cond_5
    const/16 v0, 0x4d5

    goto :goto_4
.end method

.method public static indexOf([ZZ)I
    .registers 4

    .line 162
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static indexOf([ZZII)I
    .registers 6

    .line 167
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_b

    .line 168
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 172
    :goto_7
    return v0

    .line 167
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([Z[Z)I
    .registers 7

    const/4 v1, 0x0

    .line 186
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    array-length v0, p1

    if-nez v0, :cond_f

    .line 201
    :goto_e
    return v1

    :cond_f
    move v0, v1

    .line 193
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    move v2, v1

    .line 194
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_29

    .line 195
    add-int v3, v0, v2

    aget-boolean v3, p0, v3

    aget-boolean v4, p1, v2

    if-eq v3, v4, :cond_26

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 194
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    move v1, v0

    .line 199
    goto :goto_e

    .line 201
    :cond_2b
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[Z)Ljava/lang/String;
    .registers 5

    .line 277
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    array-length v0, p1

    if-nez v0, :cond_9

    .line 279
    const-string v0, ""

    .line 288
    :goto_8
    return-object v0

    .line 283
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x7

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    const/4 v0, 0x0

    aget-boolean v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    const/4 v0, 0x1

    :goto_18
    array-length v2, p1

    if-ge v0, v2, :cond_26

    .line 286
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 288
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static lastIndexOf([ZZ)I
    .registers 4

    .line 213
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([ZZII)I
    .registers 6

    .line 218
    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-lt v0, p2, :cond_c

    .line 219
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 223
    :goto_8
    return v0

    .line 218
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 223
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[Z>;"
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method

.method public static reverse([Z)V
    .registers 3

    .line 530
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Booleans;->reverse([ZII)V

    .line 532
    return-void
.end method

.method public static reverse([ZII)V
    .registers 6

    .line 545
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 547
    add-int/lit8 v0, p2, -0x1

    :goto_9
    if-ge p1, v0, :cond_18

    .line 548
    aget-boolean v1, p0, p1

    .line 549
    aget-boolean v2, p0, v0

    aput-boolean v2, p0, p1

    .line 550
    aput-boolean v1, p0, v0

    .line 547
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 552
    :cond_18
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .line 344
    instance-of v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v0, :cond_b

    .line 345
    check-cast p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->toBooleanArray()[Z

    move-result-object v0

    .line 355
    :goto_a
    return-object v0

    .line 348
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 349
    array-length v4, v3

    .line 350
    new-array v1, v4, [Z

    .line 351
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v4, :cond_28

    .line 353
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, v1, v2

    .line 351
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_28
    move-object v0, v1

    .line 355
    goto :goto_a
.end method

.method public static trueFirst()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->TRUE_FIRST:Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method
