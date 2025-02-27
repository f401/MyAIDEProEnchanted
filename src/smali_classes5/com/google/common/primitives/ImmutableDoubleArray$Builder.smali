.class public final Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
.super Ljava/lang/Object;
.source "ImmutableDoubleArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private array:[D

.field private count:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 204
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    .line 205
    return-void
.end method

.method private ensureRoomFor(I)V
    .registers 6

    const/4 v3, 0x0

    .line 267
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    add-int/2addr v0, p1

    .line 268
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    array-length v2, v1

    if-le v0, v2, :cond_19

    .line 269
    array-length v1, v1

    invoke-static {v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->expandedCapacity(II)I

    move-result v0

    new-array v0, v0, [D

    .line 270
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iput-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    .line 273
    :cond_19
    return-void
.end method

.method private static expandedCapacity(II)I
    .registers 4

    .line 277
    if-ltz p1, :cond_17

    .line 281
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 282
    if-ge v0, p1, :cond_11

    .line 283
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 285
    :cond_11
    if-gez v0, :cond_16

    .line 286
    const v0, 0x7fffffff

    .line 288
    :cond_16
    return v0

    .line 278
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public add(D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .registers 6

    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 213
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    aput-wide p1, v0, v1

    .line 214
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 215
    return-object p0
.end method

.method public addAll(Lcom/google/common/primitives/ImmutableDoubleArray;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .registers 7

    .line 260
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 261
    invoke-static {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 263
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .line 234
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_b

    .line 235
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object p0

    .line 240
    :cond_a
    return-object p0

    .line 237
    :cond_b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->add(D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    goto :goto_f
.end method

.method public addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .line 248
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 249
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 250
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    goto :goto_b

    .line 252
    :cond_26
    return-object p0
.end method

.method public addAll([D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .registers 6

    .line 223
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 224
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 226
    return-object p0
.end method

.method public build()Lcom/google/common/primitives/ImmutableDoubleArray;
    .registers 6
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 301
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$200()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DIILcom/google/common/primitives/ImmutableDoubleArray$1;)V

    goto :goto_8
.end method
