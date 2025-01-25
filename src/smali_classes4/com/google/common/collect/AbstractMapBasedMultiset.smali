.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultiset$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient backingMap:Lcom/google/common/collect/ObjectCountHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ObjectCountHashMap",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient size:J


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->init(I)V

    .line 53
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 260
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 261
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->init(I)V

    .line 262
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;I)V

    .line 263
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 254
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 255
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .registers 11
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    if-nez p2, :cond_9

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 88
    :goto_8
    return v2

    .line 76
    :cond_9
    if-lez p2, :cond_26

    move v0, v1

    :goto_c
    const-string v3, "occurrences cannot be negative: %s"

    invoke-static {v0, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 78
    const/4 v0, -0x1

    if-ne v3, v0, :cond_28

    .line 79
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->put(Ljava/lang/Object;I)I

    .line 80
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, p2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_8

    :cond_26
    move v0, v2

    .line 76
    goto :goto_c

    .line 83
    :cond_28
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v0

    .line 84
    int-to-long v4, v0

    int-to-long v6, p2

    add-long/2addr v4, v6

    .line 85
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4b

    :goto_38
    const-string v2, "too many occurrences: %s"

    invoke-static {v1, v2, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 86
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    long-to-int v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ObjectCountHashMap;->setValue(II)V

    .line 87
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    move v2, v0

    .line 88
    goto :goto_8

    :cond_4b
    move v1, v2

    .line 85
    goto :goto_38
.end method

.method addTo(Lcom/google/common/collect/Multiset;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<-TE;>;)V"
        }
    .end annotation

    .line 226
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ObjectCountHashMap;->firstIndex()I

    move-result v0

    :goto_9
    if-ltz v0, :cond_21

    .line 228
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 227
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->nextIndex(I)I

    move-result v0

    goto :goto_9

    .line 230
    :cond_21
    return-void
.end method

.method public final clear()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ObjectCountHashMap;->clear()V

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 157
    return-void
.end method

.method public final count(Ljava/lang/Object;)I
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final distinctElements()I
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v0

    return v0
.end method

.method final elementIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$2;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method abstract init(I)V
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .line 239
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .registers 9
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v1, 0x0

    .line 94
    if-nez p2, :cond_8

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 112
    :cond_7
    :goto_7
    return v1

    .line 97
    :cond_8
    if-lez p2, :cond_30

    const/4 v0, 0x1

    :goto_b
    const-string v2, "occurrences cannot be negative: %s"

    invoke-static {v0, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 99
    const/4 v0, -0x1

    if-eq v2, v0, :cond_7

    .line 102
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v0

    .line 104
    if-le v0, p2, :cond_32

    .line 106
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    sub-int v3, v0, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ObjectCountHashMap;->setValue(II)V

    .line 111
    :goto_28
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    move v1, v0

    .line 112
    goto :goto_7

    :cond_30
    move v0, v1

    .line 97
    goto :goto_b

    .line 109
    :cond_32
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ObjectCountHashMap;->removeEntry(I)I

    move p2, v0

    goto :goto_28
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .registers 9
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 118
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    if-nez p2, :cond_16

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->remove(Ljava/lang/Object;)I

    move-result v0

    .line 120
    :goto_d
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int v1, p2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 121
    return v0

    .line 119
    :cond_16
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->put(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_d
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .registers 10
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    const-string v2, "oldCount"

    invoke-static {p2, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 127
    const-string v2, "newCount"

    invoke-static {p3, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ObjectCountHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 129
    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    .line 130
    if-eqz p2, :cond_18

    .line 150
    :cond_17
    :goto_17
    return v0

    .line 133
    :cond_18
    if-lez p3, :cond_25

    .line 134
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1, p3}, Lcom/google/common/collect/ObjectCountHashMap;->put(Ljava/lang/Object;I)I

    .line 135
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    :cond_25
    move v0, v1

    .line 137
    goto :goto_17

    .line 139
    :cond_27
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v3

    .line 140
    if-ne v3, p2, :cond_17

    .line 143
    if-nez p3, :cond_3e

    .line 144
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ObjectCountHashMap;->removeEntry(I)I

    .line 145
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    :goto_3c
    move v0, v1

    .line 150
    goto :goto_17

    .line 147
    :cond_3e
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, v2, p3}, Lcom/google/common/collect/ObjectCountHashMap;->setValue(II)V

    .line 148
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int v0, p3, p2

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_3c
.end method

.method public final size()I
    .registers 3

    .line 244
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
