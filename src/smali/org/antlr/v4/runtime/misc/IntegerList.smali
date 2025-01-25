.class public Lorg/antlr/v4/runtime/misc/IntegerList;
.super Ljava/lang/Object;
.source "IntegerList.java"


# static fields
.field private static EMPTY_DATA:[I = null

.field private static final INITIAL_SIZE:I = 0x4

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field private _data:[I

.field private _size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/antlr/v4/runtime/misc/IntegerList;->EMPTY_DATA:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/antlr/v4/runtime/misc/IntegerList;->EMPTY_DATA:[I

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_11

    if-nez p1, :cond_c

    .line 38
    sget-object p1, Lorg/antlr/v4/runtime/misc/IntegerList;->EMPTY_DATA:[I

    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    goto :goto_10

    .line 41
    :cond_c
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    :goto_10
    return-void

    .line 34
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>(I)V

    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_b

    :cond_1f
    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/IntegerList;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    .line 47
    iget p1, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iput p1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method private charArraySize()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 307
    :goto_2
    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v0, v2, :cond_12

    .line 308
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return v1
.end method

.method private ensureCapacity(I)V
    .registers 5

    if-ltz p1, :cond_24

    const v0, 0x7ffffff7

    if-gt p1, v0, :cond_24

    .line 260
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    array-length v2, v1

    if-nez v2, :cond_e

    const/4 v1, 0x4

    goto :goto_f

    .line 264
    :cond_e
    array-length v1, v1

    :cond_f
    :goto_f
    if-ge v1, p1, :cond_1b

    mul-int/lit8 v1, v1, 0x2

    if-ltz v1, :cond_17

    if-le v1, v0, :cond_f

    :cond_17
    const v1, 0x7ffffff7

    goto :goto_f

    .line 274
    :cond_1b
    iget-object p1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    return-void

    .line 256
    :cond_24
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method


# virtual methods
.method public final add(I)V
    .registers 4

    .line 58
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    array-length v0, v0

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ne v0, v1, :cond_c

    .line 59
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->ensureCapacity(I)V

    .line 62
    :cond_c
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    aput p1, v0, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->ensureCapacity(I)V

    .line 81
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 82
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v4, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    add-int/2addr v4, v1

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 85
    :cond_29
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final addAll(Lorg/antlr/v4/runtime/misc/IntegerList;)V
    .registers 7

    .line 73
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->ensureCapacity(I)V

    .line 74
    iget-object v0, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iget v3, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final addAll([I)V
    .registers 6

    .line 67
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->ensureCapacity(I)V

    .line 68
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final binarySearch(I)I
    .registers 5

    .line 240
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    return p1
.end method

.method public final binarySearch(III)I
    .registers 5

    if-ltz p1, :cond_19

    if-ltz p2, :cond_19

    .line 244
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-gt p1, v0, :cond_19

    if-gt p2, v0, :cond_19

    if-gt p1, p2, :cond_13

    .line 251
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    invoke-static {v0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    return p1

    .line 248
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 245
    :cond_19
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .registers 4

    .line 154
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 155
    iput v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final contains(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    :goto_2
    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v1, v2, :cond_11

    .line 98
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 194
    :cond_4
    instance-of v1, p1, Lorg/antlr/v4/runtime/misc/IntegerList;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 198
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntegerList;

    .line 199
    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iget v3, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    const/4 v1, 0x0

    .line 203
    :goto_14
    iget v3, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v1, v3, :cond_26

    .line 204
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v3, v3, v1

    iget-object v4, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_23

    return v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    return v0
.end method

.method public final get(I)I
    .registers 3

    if-ltz p1, :cond_b

    .line 89
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge p1, v0, :cond_b

    .line 93
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget p1, v0, p1

    return p1

    .line 90
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    :goto_2
    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v1, v2, :cond_10

    .line 225
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 138
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final removeAt(I)I
    .registers 6

    .line 117
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v0

    .line 118
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object p1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, p1, v1

    .line 120
    iput v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return v0
.end method

.method public final removeRange(II)V
    .registers 6

    if-ltz p1, :cond_29

    if-ltz p2, :cond_29

    .line 125
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-gt p1, v0, :cond_29

    if-gt p2, v0, :cond_29

    if-gt p1, p2, :cond_23

    .line 132
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    sub-int/2addr p2, p1

    sub-int p1, v1, p2

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 134
    iget p1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void

    .line 129
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 126
    :cond_29
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final set(II)I
    .registers 5

    if-ltz p1, :cond_d

    .line 107
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge p1, v0, :cond_d

    .line 111
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v1, v0, p1

    .line 112
    aput p2, v0, p1

    return v1

    .line 108
    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final size()I
    .registers 2

    .line 142
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return v0
.end method

.method public final sort()V
    .registers 4

    .line 167
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    return-void
.end method

.method public final toArray()[I
    .registers 3

    .line 159
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-nez v0, :cond_7

    .line 160
    sget-object v0, Lorg/antlr/v4/runtime/misc/IntegerList;->EMPTY_DATA:[I

    return-object v0

    .line 163
    :cond_7
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public final toCharArray()[C
    .registers 7

    .line 285
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 288
    :goto_7
    iget v4, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v1, v4, :cond_28

    .line 289
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v4, v4, v1

    if-nez v2, :cond_20

    .line 292
    invoke-static {v4}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 294
    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/IntegerList;->charArraySize()I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    const/4 v2, 0x1

    .line 299
    :cond_20
    invoke-static {v4, v0, v3}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 236
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntegerList;->toArray()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimToSize()V
    .registers 4

    .line 146
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    array-length v1, v0

    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ne v1, v2, :cond_8

    return-void

    .line 150
    :cond_8
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    return-void
.end method
