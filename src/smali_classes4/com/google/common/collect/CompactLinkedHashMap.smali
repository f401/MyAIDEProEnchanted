.class Lcom/google/common/collect/CompactLinkedHashMap;
.super Lcom/google/common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private final accessOrder:Z

.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 91
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    .line 92
    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    .line 95
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(IFZ)V

    .line 96
    return-void
.end method

.method constructor <init>(IFZ)V
    .registers 4

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;-><init>(IF)V

    .line 100
    iput-boolean p3, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    .line 101
    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v0, v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private setPredecessor(II)V
    .registers 11

    .line 127
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v2, v0, p1

    const-wide/16 v4, -0x1

    const-wide v6, -0x100000000L

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    int-to-long v4, p2

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 129
    return-void
.end method

.method private setSucceeds(II)V
    .registers 4

    const/4 v0, -0x2

    .line 132
    if-ne p1, v0, :cond_a

    .line 133
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 137
    :goto_5
    if-ne p2, v0, :cond_e

    .line 138
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 142
    :goto_9
    return-void

    .line 135
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSuccessor(II)V

    goto :goto_5

    .line 140
    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setPredecessor(II)V

    goto :goto_9
.end method

.method private setSuccessor(II)V
    .registers 11

    const-wide v6, 0xffffffffL

    .line 122
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v2, v0, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    int-to-long v4, p2

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 124
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .registers 4

    .line 153
    iget-boolean v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_1e

    .line 155
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 157
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 158
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 159
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->modCount:I

    .line 161
    :cond_1e
    return-void
.end method

.method adjustAfterRemove(II)I
    .registers 4

    .line 187
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_7

    :goto_6
    return p2

    :cond_7
    move p2, p1

    goto :goto_6
.end method

.method public clear()V
    .registers 2

    const/4 v0, -0x2

    .line 192
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    .line 193
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 194
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 195
    return-void
.end method

.method firstEntryIndex()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v0, v0, p1

    long-to-int v0, v0

    return v0
.end method

.method init(IF)V
    .registers 7

    const/4 v0, -0x2

    .line 105
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    .line 106
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 107
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 108
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 109
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 110
    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 147
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 148
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 149
    return-void
.end method

.method moveLastEntry(I)V
    .registers 5

    .line 165
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 166
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 167
    if-ge p1, v0, :cond_21

    .line 168
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 171
    :cond_21
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(I)V

    .line 172
    return-void
.end method

.method resizeEntries(I)V
    .registers 3

    .line 176
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 177
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 178
    return-void
.end method
