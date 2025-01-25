.class public final Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSET_EXPECTED_SIZE:I = -0x1


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TB;>;"
        }
    .end annotation
.end field

.field private expectedSize:I

.field private maximumSize:I


# direct methods
.method private constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TB;>;)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize:I

    .line 167
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize:I

    .line 170
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->comparator:Ljava/util/Comparator;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V
    .registers 3

    .line 158
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)Lcom/google/common/collect/Ordering;
    .registers 2

    .line 158
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->ordering()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)I
    .registers 2

    .line 158
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize:I

    return v0
.end method

.method private ordering()Lcom/google/common/collect/Ordering;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create()Lcom/google/common/collect/MinMaxPriorityQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TT;>;"
        }
    .end annotation

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TT;>;"
        }
    .end annotation

    .line 210
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize:I

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize:I

    .line 212
    new-instance v2, Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->initialQueueSize(IILjava/lang/Iterable;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;ILcom/google/common/collect/MinMaxPriorityQueue$1;)V

    .line 213
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 214
    invoke-virtual {v2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_12

    .line 216
    :cond_20
    return-object v2
.end method

.method public expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<TB;>;"
        }
    .end annotation

    .line 179
    if-ltz p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 180
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize:I

    .line 181
    return-object p0

    .line 179
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<TB;>;"
        }
    .end annotation

    .line 192
    if-lez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 193
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize:I

    .line 194
    return-object p0

    .line 192
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method
