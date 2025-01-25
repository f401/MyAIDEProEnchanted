.class Lcom/google/common/collect/CompactLinkedHashSet;
.super Lcom/google/common/collect/CompactHashSet;
.source "CompactLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field private transient predecessor:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient successor:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    .line 119
    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    .line 123
    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactLinkedHashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/CompactLinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .line 64
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 66
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactLinkedHashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactLinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .line 77
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 78
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method private succeeds(II)V
    .registers 5

    const/4 v1, -0x2

    .line 138
    if-ne p1, v1, :cond_a

    .line 139
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 144
    :goto_5
    if-ne p2, v1, :cond_f

    .line 145
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 149
    :goto_9
    return-void

    .line 141
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput p2, v0, p1

    goto :goto_5

    .line 147
    :cond_f
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aput p1, v0, p2

    goto :goto_9
.end method


# virtual methods
.method adjustAfterRemove(II)I
    .registers 4

    .line 211
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_6
    return p2

    :cond_7
    move p2, p1

    goto :goto_6
.end method

.method public clear()V
    .registers 3

    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 174
    invoke-super {p0}, Lcom/google/common/collect/CompactHashSet;->clear()V

    .line 175
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 176
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 177
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 178
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 179
    return-void
.end method

.method firstEntryIndex()I
    .registers 2

    .line 206
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v0, v0, p1

    return v0
.end method

.method init(IF)V
    .registers 7

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 127
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 128
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 129
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 131
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 132
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 133
    iput v2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 134
    iput v2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 135
    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 154
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 155
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 156
    return-void
.end method

.method moveEntry(I)V
    .registers 6

    const/4 v3, -0x1

    .line 160
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 161
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->moveEntry(I)V

    .line 163
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v2, v2, p1

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 164
    if-eq v0, p1, :cond_25

    .line 165
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 166
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 168
    :cond_25
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aput v3, v1, v0

    .line 169
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput v3, v1, v0

    .line 170
    return-void
.end method

.method resizeEntries(I)V
    .registers 5

    const/4 v2, -0x1

    .line 183
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 184
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    array-length v1, v0

    .line 185
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 186
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 188
    if-ge v1, p1, :cond_21

    .line 189
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 192
    :cond_21
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 196
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 201
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
