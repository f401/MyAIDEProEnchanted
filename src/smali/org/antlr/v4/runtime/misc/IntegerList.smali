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
    .locals 1

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/antlr/v4/runtime/misc/IntegerList;->EMPTY_DATA:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lorg/antlr/v4/runtime/misc/IntegerList;->EMPTY_DATA:[I

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    .line 38
    sget-object v0, Lorg/antlr/v4/runtime/misc/IntegerList;->EMPTY_DATA:[I

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    .line 41
    :goto_0
    return-void

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
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

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/IntegerList;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    .line 47
    iget v0, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iput v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method private charArraySize()I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 307
    :goto_0
    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v2, v1, :cond_0

    .line 308
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private ensureCapacity(I)V
    .locals 3

    const v1, 0x7ffffff7

    if-ltz p1, :cond_4

    if-gt p1, v1, :cond_4

    .line 260
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    array-length v2, v0

    if-nez v2, :cond_2

    const/4 v0, 0x4

    .line 264
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_3

    mul-int/lit8 v0, v0, 0x2

    if-ltz v0, :cond_1

    if-le v0, v1, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    array-length v0, v0

    goto :goto_0

    .line 274
    :cond_3
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    return-void

    .line 256
    :cond_4
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final add(I)V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    array-length v0, v0

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ne v0, v1, :cond_0

    .line 59
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->ensureCapacity(I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    aput p1, v0, v1

    .line 63
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
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

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v4, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    add-int/2addr v4, v1

    aput v0, v3, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final addAll(Lorg/antlr/v4/runtime/misc/IntegerList;)V
    .locals 5

    .line 73
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->ensureCapacity(I)V

    .line 74
    iget-object v0, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v3, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iget v4, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final addAll([I)V
    .locals 4

    .line 67
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->ensureCapacity(I)V

    .line 68
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final binarySearch(I)I
    .locals 3

    .line 240
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public final binarySearch(III)I
    .locals 1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 244
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-gt p1, v0, :cond_1

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 251
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    invoke-static {v0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    return v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 3

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 155
    iput v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void
.end method

.method public final contains(I)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    .line 97
    :goto_0
    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v0, v2, :cond_0

    .line 98
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    move v1, v2

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/IntegerList;

    if-eqz v0, :cond_0

    .line 198
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntegerList;

    .line 199
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    iget v3, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 203
    :goto_1
    iget v3, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v0, v3, :cond_2

    .line 204
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v3, v3, v0

    iget-object v4, p1, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public final get(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 89
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v0, v0, p1

    return v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    :goto_0
    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v1, v2, :cond_0

    .line 225
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 138
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAt(I)I
    .locals 4

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
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 120
    iput v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return v0
.end method

.method public final removeRange(II)V
    .locals 5

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 125
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-gt p1, v0, :cond_1

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 132
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    sub-int v2, p2, p1

    sub-int v3, v1, v2

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 134
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final set(II)I
    .locals 2

    if-ltz p1, :cond_0

    .line 107
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v1, v0, p1

    .line 112
    aput p2, v0, p1

    return v1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    return v0
.end method

.method public final sort()V
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    return-void
.end method

.method public final toArray()[I
    .locals 2

    .line 159
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lorg/antlr/v4/runtime/misc/IntegerList;->EMPTY_DATA:[I

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public final toCharArray()[C
    .locals 6

    const/4 v2, 0x0

    .line 285
    iget v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    new-array v0, v0, [C

    move v1, v2

    move v3, v2

    move v4, v2

    .line 288
    :goto_0
    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ge v3, v2, :cond_1

    .line 289
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    aget v2, v2, v3

    if-nez v1, :cond_0

    .line 292
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/IntegerList;->charArraySize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    const/4 v1, 0x1

    .line 299
    :cond_0
    invoke-static {v2, v0, v4}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntegerList;->toArray()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimToSize()V
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    array-length v1, v0

    iget v2, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_size:I

    if-ne v1, v2, :cond_0

    .line 150
    :goto_0
    return-void

    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntegerList;->_data:[I

    goto :goto_0
.end method
