.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;,
        Lcom/google/common/primitives/Floats$FloatConverter;,
        Lcom/google/common/primitives/Floats$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([FFII)I
    .registers 5

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .registers 5

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([F)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 500
    array-length v0, p0

    if-nez v0, :cond_8

    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 503
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([F)V

    goto :goto_7
.end method

.method public static compare(FF)I
    .registers 3

    .line 89
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[F)[F
    .registers 8

    const/4 v1, 0x0

    .line 262
    .line 263
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v4, p0, v2

    .line 264
    array-length v4, v4

    add-int/2addr v0, v4

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 266
    :cond_d
    new-array v3, v0, [F

    .line 268
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_12
    if-ge v2, v4, :cond_1f

    aget-object v5, p0, v2

    .line 269
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    array-length v5, v5

    add-int/2addr v0, v5

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 272
    :cond_1f
    return-object v3
.end method

.method public static constrainToRange(FFF)F
    .registers 7

    .line 249
    cmpg-float v0, p1, p2

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    :goto_5
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 249
    :cond_1b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static contains([FF)Z
    .registers 6

    const/4 v0, 0x0

    .line 113
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_c

    aget v3, p0, v1

    .line 114
    cmpl-float v3, v3, p1

    if-nez v3, :cond_d

    .line 115
    const/4 v0, 0x1

    .line 118
    :cond_c
    return v0

    .line 113
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static ensureCapacity([FII)[F
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 327
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 328
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    :cond_1a
    return-object p0

    :cond_1b
    move v0, v2

    .line 326
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 327
    goto :goto_c
.end method

.method public static hashCode(F)I
    .registers 2

    .line 72
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([FF)I
    .registers 4

    .line 131
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static indexOf([FFII)I
    .registers 6

    .line 136
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_d

    .line 137
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_a

    .line 141
    :goto_9
    return v0

    .line 136
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static indexOf([F[F)I
    .registers 7

    const/4 v1, 0x0

    .line 157
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    array-length v0, p1

    if-nez v0, :cond_f

    .line 172
    :goto_e
    return v1

    :cond_f
    move v0, v1

    .line 164
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2d

    move v2, v1

    .line 165
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2b

    .line 166
    add-int v3, v0, v2

    aget v3, p0, v3

    aget v4, p1, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_28

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 165
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2b
    move v1, v0

    .line 170
    goto :goto_e

    .line 172
    :cond_2d
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public static isFinite(F)Z
    .registers 2

    .line 101
    const/high16 v0, -0x800000  # Float.NEGATIVE_INFINITY

    cmpg-float v0, v0, p0

    if-gez v0, :cond_e

    const/high16 v0, 0x7f800000  # Float.POSITIVE_INFINITY

    cmpg-float v0, p0, v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static varargs join(Ljava/lang/String;[F)Ljava/lang/String;
    .registers 5

    .line 344
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    array-length v0, p1

    if-nez v0, :cond_9

    .line 346
    const-string v0, ""

    .line 355
    :goto_8
    return-object v0

    .line 350
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0xc

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 352
    const/4 v0, 0x1

    :goto_18
    array-length v2, p1

    if-ge v0, v2, :cond_26

    .line 353
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 355
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static lastIndexOf([FF)I
    .registers 4

    .line 185
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([FFII)I
    .registers 6

    .line 190
    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-lt v0, p2, :cond_e

    .line 191
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_b

    .line 195
    :goto_a
    return v0

    .line 190
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 195
    :cond_e
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[F>;"
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([F)F
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    array-length v0, p0

    if-lez v0, :cond_17

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 227
    aget v0, p0, v2

    .line 228
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 229
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    move v0, v2

    .line 226
    goto :goto_6

    .line 231
    :cond_19
    return v0
.end method

.method public static varargs min([F)F
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    array-length v0, p0

    if-lez v0, :cond_17

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 209
    aget v0, p0, v2

    .line 210
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 211
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    move v0, v2

    .line 208
    goto :goto_6

    .line 213
    :cond_19
    return v0
.end method

.method public static reverse([F)V
    .registers 3

    .line 432
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Floats;->reverse([FII)V

    .line 434
    return-void
.end method

.method public static reverse([FII)V
    .registers 6

    .line 447
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 449
    add-int/lit8 v0, p2, -0x1

    :goto_9
    if-ge p1, v0, :cond_18

    .line 450
    aget v1, p0, p1

    .line 451
    aget v2, p0, v0

    aput v2, p0, p1

    .line 452
    aput v1, p0, v0

    .line 449
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 454
    :cond_18
    return-void
.end method

.method public static sortDescending([F)V
    .registers 3

    .line 405
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Floats;->sortDescending([FII)V

    .line 407
    return-void
.end method

.method public static sortDescending([FII)V
    .registers 4

    .line 419
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 421
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([FII)V

    .line 422
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Floats;->reverse([FII)V

    .line 423
    return-void
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/google/common/primitives/Floats$FloatConverter;->INSTANCE:Lcom/google/common/primitives/Floats$FloatConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[F
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[F"
        }
    .end annotation

    .line 470
    instance-of v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v0, :cond_b

    .line 471
    check-cast p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->toFloatArray()[F

    move-result-object v0

    .line 481
    :goto_a
    return-object v0

    .line 474
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 475
    array-length v4, v3

    .line 476
    new-array v1, v4, [F

    .line 477
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v4, :cond_28

    .line 479
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    aput v0, v1, v2

    .line 477
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_28
    move-object v0, v1

    .line 481
    goto :goto_a
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 655
    sget-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 659
    :try_start_c
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_15

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 665
    :goto_14
    return-object v0

    .line 660
    :catch_15
    move-exception v0

    .line 665
    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method
