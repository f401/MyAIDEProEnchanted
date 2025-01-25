.class public final Lcom/s1243808733/android/dx/util/IntList;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "IntList.java"


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/util/IntList;


# instance fields
.field private size:I

.field private sorted:Z

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    .line 38
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 75
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 87
    :try_start_4
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I
    :try_end_8
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_4 .. :try_end_8} :catch_e

    .line 93
    const/4 p1, 0x0

    iput p1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    .line 94
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    return-void

    .line 90
    :catch_e
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private growIfNeeded()V
    .registers 5

    .line 272
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    array-length v2, v1

    if-ne v0, v2, :cond_15

    .line 274
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [I

    .line 275
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput-object v2, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    :cond_15
    return-void
.end method

.method public static makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;
    .registers 3

    .line 47
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 50
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    return-object v0
.end method

.method public static makeImmutable(II)Lcom/s1243808733/android/dx/util/IntList;
    .registers 4

    .line 62
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 64
    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 66
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 6

    .line 215
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 217
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/IntList;->growIfNeeded()V

    .line 219
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    iget v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    aput p1, v0, v1

    .line 221
    iget-boolean v3, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    if-le v2, v3, :cond_20

    .line 222
    sub-int/2addr v1, v3

    aget v0, v0, v1

    if-lt p1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    :cond_20
    return-void
.end method

.method public binarysearch(I)I
    .registers 7

    .line 393
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    .line 395
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-nez v1, :cond_15

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_13

    .line 398
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    neg-int p1, v0

    return p1

    :cond_15
    const/4 v1, -0x1

    move v2, v0

    :goto_17
    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_2a

    sub-int v3, v2, v1

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 423
    iget-object v4, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v4, v4, v3

    if-gt p1, v4, :cond_28

    move v2, v3

    goto :goto_17

    :cond_28
    move v1, v3

    goto :goto_17

    :cond_2a
    if-eq v2, v0, :cond_37

    .line 433
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v0, v0, v2

    if-ne p1, v0, :cond_33

    goto :goto_36

    :cond_33
    neg-int p1, v2

    add-int/lit8 v2, p1, -0x1

    :goto_36
    return v2

    :cond_37
    neg-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public contains(I)Z
    .registers 2

    .line 451
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 116
    :cond_4
    instance-of v1, p1, Lcom/s1243808733/android/dx/util/IntList;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 120
    :cond_a
    check-cast p1, Lcom/s1243808733/android/dx/util/IntList;

    .line 122
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    iget-boolean v3, p1, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-eq v1, v3, :cond_13

    return v2

    .line 126
    :cond_13
    iget v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    iget v3, p1, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    const/4 v1, 0x0

    .line 130
    :goto_1b
    iget v3, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-ge v1, v3, :cond_2d

    .line 131
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v3, v3, v1

    iget-object v4, p1, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_2a

    return v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2d
    return v0
.end method

.method public get(I)I
    .registers 3

    .line 172
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-ge p1, v0, :cond_12

    .line 177
    :try_start_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget p1, v0, p1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 180
    :catch_9
    move-exception p1

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_12
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n >= size()"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    :goto_2
    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-ge v0, v2, :cond_10

    .line 103
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    return v1
.end method

.method public indexOf(I)I
    .registers 2

    .line 375
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/util/IntList;->binarysearch(I)I

    move-result p1

    if-ltz p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    return p1
.end method

.method public insert(II)V
    .registers 7

    .line 236
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-gt p1, v0, :cond_33

    .line 240
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/IntList;->growIfNeeded()V

    .line 242
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aput p2, v0, p1

    .line 244
    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    .line 246
    iget-boolean v3, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-eqz v3, :cond_2f

    if-eqz p1, :cond_27

    add-int/lit8 v3, p1, -0x1

    aget v3, v0, v3

    if-le p2, v3, :cond_2f

    :cond_27
    if-eq p1, v2, :cond_2d

    aget p1, v0, v1

    if-ge p2, p1, :cond_2f

    :cond_2d
    const/4 p1, 0x1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    return-void

    .line 237
    :cond_33
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "n > size()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mutableCopy()Lcom/s1243808733/android/dx/util/IntList;
    .registers 5

    .line 344
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    .line 345
    new-instance v1, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_14

    .line 348
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-object v1
.end method

.method public pop()I
    .registers 3

    .line 297
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 301
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 302
    iget v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    return v0
.end method

.method public pop(I)V
    .registers 3

    .line 314
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 316
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    return-void
.end method

.method public removeIndex(I)V
    .registers 5

    .line 258
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-ge p1, v0, :cond_15

    .line 262
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget p1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    return-void

    .line 259
    :cond_15
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n >= size()"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(II)V
    .registers 4

    .line 191
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 193
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-ge p1, v0, :cond_1b

    .line 198
    :try_start_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aput p2, v0, p1

    .line 199
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z
    :try_end_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_12

    :catch_f
    move-exception p2

    if-ltz p1, :cond_13

    :goto_12
    return-void

    .line 203
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_1b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "n >= size()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shrink(I)V
    .registers 3

    if-ltz p1, :cond_14

    .line 329
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-gt p1, v0, :cond_c

    .line 333
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 335
    iput p1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    return-void

    .line 330
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newSize > size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    return v0
.end method

.method public sort()V
    .registers 4

    .line 358
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 360
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-nez v0, :cond_12

    .line 361
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 146
    :goto_11
    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-ge v1, v2, :cond_26

    if-eqz v1, :cond_1c

    .line 148
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_1c
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 153
    :cond_26
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public top()I
    .registers 2

    .line 287
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0
.end method
