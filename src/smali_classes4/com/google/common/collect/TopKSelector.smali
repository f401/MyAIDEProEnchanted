.class final Lcom/google/common/collect/TopKSelector;
.super Ljava/lang/Object;
.source "TopKSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private bufferSize:I

.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final k:I

.field private threshold:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Comparator;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "comparator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    .line 116
    iput p2, p0, Lcom/google/common/collect/TopKSelector;->k:I

    .line 117
    if-ltz p2, :cond_26

    const/4 v0, 0x1

    :goto_13
    const-string v2, "k must be nonnegative, was %s"

    invoke-static {v0, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 118
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    .line 119
    iput v1, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 121
    return-void

    :cond_26
    move v0, v1

    .line 117
    goto :goto_13
.end method

.method public static greatest(I)Lcom/google/common/collect/TopKSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(I)",
            "Lcom/google/common/collect/TopKSelector",
            "<TT;>;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/TopKSelector;->greatest(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;

    move-result-object v0

    return-object v0
.end method

.method public static greatest(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lcom/google/common/collect/TopKSelector",
            "<TT;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/google/common/collect/TopKSelector;

    invoke-static {p1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/TopKSelector;-><init>(Ljava/util/Comparator;I)V

    return-object v0
.end method

.method public static least(I)Lcom/google/common/collect/TopKSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(I)",
            "Lcom/google/common/collect/TopKSelector",
            "<TT;>;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/TopKSelector;->least(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;

    move-result-object v0

    return-object v0
.end method

.method public static least(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lcom/google/common/collect/TopKSelector",
            "<TT;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/common/collect/TopKSelector;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/TopKSelector;-><init>(Ljava/util/Comparator;I)V

    return-object v0
.end method

.method private partition(III)I
    .registers 9

    .line 199
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v2, v0, p3

    .line 200
    aget-object v1, v0, p2

    aput-object v1, v0, p3

    move v0, p1

    move v1, p1

    .line 203
    :goto_a
    if-ge v1, p2, :cond_21

    .line 204
    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {v3, v4, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1d

    .line 205
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/TopKSelector;->swap(II)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 203
    :cond_1d
    add-int/lit8 p1, v1, 0x1

    move v1, p1

    goto :goto_a

    .line 209
    :cond_21
    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v3, v1, v0

    aput-object v3, v1, p2

    .line 210
    aput-object v2, v1, v0

    .line 211
    return v0
.end method

.method private swap(II)V
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 216
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 217
    aput-object v1, v0, p2

    .line 218
    return-void
.end method

.method private trim()V
    .registers 8

    const/4 v3, 0x0

    .line 153
    .line 154
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->k:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x1

    .line 161
    add-int/lit8 v0, v2, 0x0

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v5

    move v1, v3

    move v4, v3

    move v0, v3

    .line 162
    :goto_12
    if-ge v1, v2, :cond_31

    .line 163
    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/google/common/collect/TopKSelector;->partition(III)I

    move-result v3

    .line 167
    iget v6, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-le v3, v6, :cond_58

    .line 168
    add-int/lit8 v2, v3, -0x1

    .line 175
    :goto_24
    add-int/lit8 v3, v4, 0x1

    .line 176
    mul-int/lit8 v4, v5, 0x3

    if-lt v3, v4, :cond_62

    .line 178
    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v1, v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 182
    :cond_31
    iget v1, p0, Lcom/google/common/collect/TopKSelector;->k:I

    iput v1, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    .line 184
    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 185
    add-int/lit8 v0, v0, 0x1

    :goto_3d
    iget v1, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-ge v0, v1, :cond_64

    .line 186
    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_55

    .line 187
    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 185
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 169
    :cond_58
    if-ge v3, v6, :cond_31

    .line 170
    add-int/lit8 v0, v1, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v3

    .line 171
    goto :goto_24

    :cond_62
    move v4, v3

    .line 181
    goto :goto_12

    .line 190
    :cond_64
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)V
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 128
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-nez v0, :cond_5

    .line 146
    :cond_4
    :goto_4
    return-void

    .line 130
    :cond_5
    iget v1, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    if-nez v1, :cond_14

    .line 131
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 132
    iput-object p1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    goto :goto_4

    .line 134
    :cond_14
    if-ge v1, v0, :cond_2b

    .line 135
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    aput-object p1, v0, v1

    .line 136
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_4

    .line 137
    iput-object p1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    goto :goto_4

    .line 139
    :cond_2b
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    aput-object p1, v0, v1

    .line 142
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->k:I

    mul-int/lit8 v0, v0, 0x2

    if-ne v2, v0, :cond_4

    .line 143
    invoke-direct {p0}, Lcom/google/common/collect/TopKSelector;->trim()V

    goto :goto_4
.end method

.method public offerAll(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)V"
        }
    .end annotation

    .line 228
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TopKSelector;->offerAll(Ljava/util/Iterator;)V

    .line 229
    return-void
.end method

.method public offerAll(Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .line 240
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 241
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TopKSelector;->offer(Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_e
    return-void
.end method

.method public topK()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    iget-object v3, p0, Lcom/google/common/collect/TopKSelector;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 255
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->k:I

    if-le v0, v1, :cond_23

    .line 256
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 257
    iget v0, p0, Lcom/google/common/collect/TopKSelector;->k:I

    iput v0, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    .line 258
    iget-object v1, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/collect/TopKSelector;->threshold:Ljava/lang/Object;

    .line 261
    :cond_23
    iget-object v0, p0, Lcom/google/common/collect/TopKSelector;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/TopKSelector;->bufferSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
