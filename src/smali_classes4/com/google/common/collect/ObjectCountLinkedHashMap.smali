.class Lcom/google/common/collect/ObjectCountLinkedHashMap;
.super Lcom/google/common/collect/ObjectCountHashMap;
.source "ObjectCountLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ObjectCountHashMap",
        "<TK;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J


# direct methods
.method constructor <init>()V
    .registers 2

    .line 69
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(I)V

    .line 70
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 73
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(IF)V

    .line 74
    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(IF)V

    .line 78
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ObjectCountHashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ObjectCountHashMap",
            "<TK;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>()V

    .line 81
    invoke-virtual {p1}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->init(IF)V

    .line 82
    invoke-virtual {p1}, Lcom/google/common/collect/ObjectCountHashMap;->firstIndex()I

    move-result v0

    :goto_10
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 83
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->put(Ljava/lang/Object;I)I

    .line 82
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->nextIndex(I)I

    move-result v0

    goto :goto_10

    .line 85
    :cond_23
    return-void
.end method

.method public static create()Lcom/google/common/collect/ObjectCountLinkedHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ObjectCountLinkedHashMap",
            "<TK;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/ObjectCountLinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/ObjectCountLinkedHashMap",
            "<TK;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v0, v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private getSuccessor(I)I
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v0, v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private setPredecessor(II)V
    .registers 11

    .line 126
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

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

    .line 128
    return-void
.end method

.method private setSucceeds(II)V
    .registers 4

    const/4 v0, -0x2

    .line 131
    if-ne p1, v0, :cond_a

    .line 132
    iput p2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    .line 136
    :goto_5
    if-ne p2, v0, :cond_e

    .line 137
    iput p1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    .line 141
    :goto_9
    return-void

    .line 134
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSuccessor(II)V

    goto :goto_5

    .line 139
    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setPredecessor(II)V

    goto :goto_9
.end method

.method private setSuccessor(II)V
    .registers 11

    const-wide v6, 0xffffffffL

    .line 121
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v2, v0, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    int-to-long v4, p2

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 123
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, -0x2

    .line 171
    invoke-super {p0}, Lcom/google/common/collect/ObjectCountHashMap;->clear()V

    .line 172
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    .line 173
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    .line 174
    return-void
.end method

.method firstIndex()I
    .registers 3

    .line 98
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    const/4 v0, -0x1

    :cond_6
    return v0
.end method

.method init(IF)V
    .registers 7

    const/4 v0, -0x2

    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    .line 90
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    .line 91
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    .line 92
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    .line 93
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 94
    return-void
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ObjectCountHashMap;->insertEntry(ILjava/lang/Object;II)V

    .line 146
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 147
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 148
    return-void
.end method

.method moveLastEntry(I)V
    .registers 5

    .line 152
    invoke-virtual {p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 153
    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 154
    if-ge p1, v0, :cond_21

    .line 155
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 156
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 158
    :cond_21
    invoke-super {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->moveLastEntry(I)V

    .line 159
    return-void
.end method

.method nextIndex(I)I
    .registers 4

    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result v0

    .line 104
    const/4 v1, -0x2

    if-ne v0, v1, :cond_8

    const/4 v0, -0x1

    :cond_8
    return v0
.end method

.method nextIndexAfterRemove(II)I
    .registers 4

    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->size()I

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_6
    return p2

    :cond_7
    move p2, p1

    goto :goto_6
.end method

.method resizeEntries(I)V
    .registers 6

    .line 163
    invoke-super {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeEntries(I)V

    .line 164
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    array-length v1, v0

    .line 165
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    .line 166
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 167
    return-void
.end method
