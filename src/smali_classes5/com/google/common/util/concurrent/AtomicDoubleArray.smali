.class public Lcom/google/common/util/concurrent/AtomicDoubleArray;
.super Ljava/lang/Object;
.source "AtomicDoubleArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient longs:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 61
    return-void
.end method

.method public constructor <init>([D)V
    .registers 8

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    array-length v1, p1

    .line 72
    new-array v2, v1, [J

    .line 73
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_14

    .line 74
    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 76
    :cond_14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 77
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 251
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 252
    invoke-static {}, Lcom/google/common/primitives/ImmutableLongArray;->builder()Lcom/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v2

    .line 253
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1c

    .line 254
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->add(J)Lcom/google/common/primitives/ImmutableLongArray$Builder;

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 256
    :cond_1c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2}, Lcom/google/common/primitives/ImmutableLongArray$Builder;->build()Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableLongArray;->toArray()[J

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 257
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 237
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->length()I

    move-result v1

    .line 238
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 241
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_17

    .line 242
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 244
    :cond_17
    return-void
.end method


# virtual methods
.method public addAndGet(ID)D
    .registers 12

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 195
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 196
    add-double v6, v0, p2

    .line 197
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 198
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    return-wide v6
.end method

.method public final compareAndSet(IDD)Z
    .registers 12

    .line 143
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method

.method public final get(I)D
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(ID)D
    .registers 12

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 176
    add-double v0, v6, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 178
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    return-wide v6
.end method

.method public final getAndSet(ID)D
    .registers 8

    .line 128
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 129
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndSet(IJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final lazySet(ID)V
    .registers 8

    .line 116
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 117
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 118
    return-void
.end method

.method public final length()I
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    return v0
.end method

.method public final set(ID)V
    .registers 8

    .line 105
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 106
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 210
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDoubleArray;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 211
    const/4 v0, -0x1

    if-ne v1, v0, :cond_c

    .line 212
    const-string v0, "[]"

    .line 221
    :goto_b
    return-object v0

    .line 216
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x13

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 217
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    const/4 v0, 0x0

    .line 219
    :goto_1b
    iget-object v3, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 220
    if-ne v0, v1, :cond_34

    .line 221
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 223
    :cond_34
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public final weakCompareAndSet(IDD)Z
    .registers 12

    .line 161
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicDoubleArray;->longs:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->weakCompareAndSet(IJJ)Z

    move-result v0

    return v0
.end method
