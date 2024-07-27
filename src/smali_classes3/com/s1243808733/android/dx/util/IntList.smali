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
.method static final constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    .line 38
    sget-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

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
    .registers 4

    const/4 v1, 0x1

    .line 84
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 87
    :try_start_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    .line 94
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private growIfNeeded()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 272
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 274
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    .line 275
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    :cond_0
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

    .line 52
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

    .line 68
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 217
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/IntList;->growIfNeeded()V

    .line 219
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    aput p1, v1, v2

    .line 221
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-le v1, v0, :cond_1

    .line 222
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v2, v2, -0x2

    aget v1, v1, v2

    if-ge p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    :cond_1
    return-void
.end method

.method public binarysearch(I)I
    .registers 7

    .line 393
    iget v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    .line 395
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-nez v0, :cond_2

    .line 397
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 403
    neg-int v0, v1

    .line 435
    :cond_0
    :goto_1
    return v0

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_2
    const/4 v2, -0x1

    move v0, v1

    move v3, v2

    .line 416
    :goto_2
    add-int/lit8 v2, v3, 0x1

    if-gt v0, v2, :cond_3

    .line 432
    if-eq v0, v1, :cond_5

    .line 433
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 422
    :cond_3
    sub-int v2, v0, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    .line 423
    iget-object v4, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v4, v4, v2

    .line 425
    if-gt p1, v4, :cond_4

    move v0, v2

    .line 426
    goto :goto_2

    :cond_4
    move v3, v2

    .line 428
    goto :goto_2

    .line 435
    :cond_5
    neg-int v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public contains(I)Z
    .registers 3

    .line 451
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    instance-of v2, p1, Lcom/s1243808733/android/dx/util/IntList;

    if-eqz v2, :cond_4

    .line 120
    check-cast p1, Lcom/s1243808733/android/dx/util/IntList;

    .line 122
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-nez v2, :cond_4

    .line 126
    :cond_2
    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    iget v3, p1, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-ne v2, v3, :cond_4

    move v2, v1

    .line 130
    :goto_1
    iget v3, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-ge v2, v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_4

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_3
    iget-boolean v2, p1, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public get(I)I
    .registers 4

    .line 172
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-lt p1, v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 180
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 102
    :goto_0
    iget v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-lt v0, v1, :cond_0

    .line 106
    return v2

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v1, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public indexOf(I)I
    .registers 3

    .line 375
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/util/IntList;->binarysearch(I)I

    move-result v0

    .line 377
    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public insert(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 236
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-le p1, v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n > size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/IntList;->growIfNeeded()V

    .line 242
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aput p2, v0, p1

    .line 244
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    .line 246
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-le p2, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    if-lt p2, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mutableCopy()Lcom/s1243808733/android/dx/util/IntList;
    .registers 5

    .line 344
    iget v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    .line 345
    new-instance v2, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 347
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 351
    return-object v2

    .line 348
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public pop()I
    .registers 3

    .line 297
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 299
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 302
    iget v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    .line 304
    return v0
.end method

.method public pop(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 316
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    return-void
.end method

.method public removeIndex(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 258
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-lt p1, v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    iget v3, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    return-void
.end method

.method public set(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 193
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-lt p1, v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aput p2, v0, p1

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 202
    if-gez p1, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 325
    if-gez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-le p1, v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize > size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 335
    iput p1, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    return-void
.end method

.method public size()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    return v0
.end method

.method public sort()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->throwIfImmutable()V

    .line 360
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/util/IntList;->sorted:Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/s1243808733/android/dx/util/IntList;->size:I

    if-lt v0, v2, :cond_0

    .line 153
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    if-eqz v0, :cond_1

    .line 148
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/IntList;->values:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
