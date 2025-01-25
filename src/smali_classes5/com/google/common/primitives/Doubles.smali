.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Doubles$DoubleArrayAsList;,
        Lcom/google/common/primitives/Doubles$DoubleConverter;,
        Lcom/google/common/primitives/Doubles$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field static final FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 650
    invoke-static {}, Lcom/google/common/primitives/Doubles;->fpPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([DDII)I
    .registers 6

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([DDII)I
    .registers 6

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([D)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 506
    array-length v0, p0

    if-nez v0, :cond_8

    .line 507
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 509
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([D)V

    goto :goto_7
.end method

.method public static compare(DD)I
    .registers 6

    .line 92
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[D)[D
    .registers 8

    const/4 v1, 0x0

    .line 265
    .line 266
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v4, p0, v2

    .line 267
    array-length v4, v4

    add-int/2addr v0, v4

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 269
    :cond_d
    new-array v3, v0, [D

    .line 271
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_12
    if-ge v2, v4, :cond_1f

    aget-object v5, p0, v2

    .line 272
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length v5, v5

    add-int/2addr v0, v5

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 275
    :cond_1f
    return-object v3
.end method

.method public static constrainToRange(DDD)D
    .registers 10

    .line 252
    cmpg-double v0, p2, p4

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    :goto_5
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0

    .line 252
    :cond_1b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static contains([DD)Z
    .registers 10

    const/4 v0, 0x0

    .line 116
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_c

    aget-wide v4, p0, v1

    .line 117
    cmpl-double v3, v4, p1

    if-nez v3, :cond_d

    .line 118
    const/4 v0, 0x1

    .line 121
    :cond_c
    return v0

    .line 116
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static ensureCapacity([DII)[D
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    if-ltz p1, :cond_1b

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 330
    if-ltz p2, :cond_1d

    :goto_c
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 331
    array-length v0, p0

    if-ge v0, p1, :cond_1a

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    :cond_1a
    return-object p0

    :cond_1b
    move v0, v2

    .line 329
    goto :goto_5

    :cond_1d
    move v1, v2

    .line 330
    goto :goto_c
.end method

.method private static fpPattern()Ljava/util/regex/Pattern;
    .registers 4

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:[eE][+-]?\\d+#)?[fFdD]?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0[xX]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[pP][+-]?\\d+#[fFdD]?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[+-]?(?:NaN|Infinity|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    const-string v1, "#"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static hashCode(D)I
    .registers 4

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([DD)I
    .registers 6

    .line 134
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static indexOf([DDII)I
    .registers 10

    .line 139
    move v0, p3

    :goto_1
    if-ge v0, p4, :cond_d

    .line 140
    aget-wide v2, p0, v0

    cmpl-double v1, v2, p1

    if-nez v1, :cond_a

    .line 144
    :goto_9
    return v0

    .line 139
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static indexOf([D[D)I
    .registers 10

    const/4 v1, 0x0

    .line 160
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    array-length v0, p1

    if-nez v0, :cond_f

    .line 175
    :goto_e
    return v1

    :cond_f
    move v0, v1

    .line 167
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2d

    move v2, v1

    .line 168
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2b

    .line 169
    add-int v3, v0, v2

    aget-wide v4, p0, v3

    aget-wide v6, p1, v2

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_28

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 168
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2b
    move v1, v0

    .line 173
    goto :goto_e

    .line 175
    :cond_2d
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public static isFinite(D)Z
    .registers 4

    .line 104
    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    cmpg-double v0, v0, p0

    if-gez v0, :cond_e

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpg-double v0, p0, v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static varargs join(Ljava/lang/String;[D)Ljava/lang/String;
    .registers 6

    .line 347
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    array-length v0, p1

    if-nez v0, :cond_9

    .line 349
    const-string v0, ""

    .line 358
    :goto_8
    return-object v0

    .line 353
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0xc

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 355
    const/4 v0, 0x1

    :goto_18
    array-length v2, p1

    if-ge v0, v2, :cond_26

    .line 356
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 358
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static lastIndexOf([DD)I
    .registers 6

    .line 188
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([DDII)I
    .registers 10

    .line 193
    add-int/lit8 v0, p4, -0x1

    :goto_2
    if-lt v0, p3, :cond_e

    .line 194
    aget-wide v2, p0, v0

    cmpl-double v1, v2, p1

    if-nez v1, :cond_b

    .line 198
    :goto_a
    return v0

    .line 193
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 198
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
            "<[D>;"
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([D)D
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    array-length v0, p0

    if-lez v0, :cond_17

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 230
    aget-wide v2, p0, v2

    .line 231
    :goto_b
    array-length v0, p0

    if-ge v1, v0, :cond_19

    .line 232
    aget-wide v4, p0, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    move v0, v2

    .line 229
    goto :goto_6

    .line 234
    :cond_19
    return-wide v2
.end method

.method public static varargs min([D)D
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    array-length v0, p0

    if-lez v0, :cond_17

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 212
    aget-wide v2, p0, v2

    .line 213
    :goto_b
    array-length v0, p0

    if-ge v1, v0, :cond_19

    .line 214
    aget-wide v4, p0, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    move v0, v2

    .line 211
    goto :goto_6

    .line 216
    :cond_19
    return-wide v2
.end method

.method public static reverse([D)V
    .registers 3

    .line 435
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Doubles;->reverse([DII)V

    .line 437
    return-void
.end method

.method public static reverse([DII)V
    .registers 9

    .line 450
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 452
    add-int/lit8 v0, p2, -0x1

    :goto_9
    if-ge p1, v0, :cond_18

    .line 453
    aget-wide v2, p0, p1

    .line 454
    aget-wide v4, p0, v0

    aput-wide v4, p0, p1

    .line 455
    aput-wide v2, p0, v0

    .line 452
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 457
    :cond_18
    return-void
.end method

.method public static sortDescending([D)V
    .registers 3

    .line 408
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Doubles;->sortDescending([DII)V

    .line 410
    return-void
.end method

.method public static sortDescending([DII)V
    .registers 4

    .line 422
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 424
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([DII)V

    .line 425
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Doubles;->reverse([DII)V

    .line 426
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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/google/common/primitives/Doubles$DoubleConverter;->INSTANCE:Lcom/google/common/primitives/Doubles$DoubleConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[D
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[D"
        }
    .end annotation

    .line 473
    instance-of v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v0, :cond_b

    .line 474
    check-cast p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->toDoubleArray()[D

    move-result-object v0

    .line 484
    :goto_a
    return-object v0

    .line 477
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 478
    array-length v4, v3

    .line 479
    new-array v1, v4, [D

    .line 480
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v4, :cond_28

    .line 482
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 480
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_28
    move-object v0, v1

    .line 484
    goto :goto_a
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 696
    sget-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 700
    :try_start_c
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_15

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 706
    :goto_14
    return-object v0

    .line 701
    :catch_15
    move-exception v0

    .line 706
    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method
