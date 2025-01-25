.class final Lcom/google/common/collect/CartesianList;
.super Ljava/util/AbstractList;
.source "CartesianList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<",
        "Ljava/util/List",
        "<TE;>;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final transient axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final transient axesSizeProduct:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/List",
            "<TE;>;>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    .line 52
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [I

    .line 53
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    aput v1, v2, v0

    .line 55
    :try_start_14
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1b
    if-ltz v1, :cond_35

    .line 56
    add-int/lit8 v0, v1, 0x1

    aget v3, v2, v0

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v3, v0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    aput v0, v2, v1
    :try_end_31
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_31} :catch_38

    .line 55
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1b

    .line 61
    :cond_35
    iput-object v2, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    .line 63
    return-void

    .line 58
    :catch_38
    move-exception v0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cartesian product too large; must have size at most Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/common/collect/CartesianList;)Lcom/google/common/collect/ImmutableList;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/CartesianList;II)I
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CartesianList;->getAxisIndexForProductIndex(II)I

    move-result v0

    return v0
.end method

.method static create(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+TE;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .line 39
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 41
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 43
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 47
    :goto_27
    return-object v0

    .line 45
    :cond_28
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_d

    .line 47
    :cond_2c
    new-instance v0, Lcom/google/common/collect/CartesianList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/CartesianList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_27
.end method

.method private getAxisIndexForProductIndex(II)I
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    div-int v1, p1, v0

    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v1, v0

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CartesianList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public get(I)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/common/collect/CartesianList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 94
    new-instance v0, Lcom/google/common/collect/CartesianList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CartesianList$1;-><init>(Lcom/google/common/collect/CartesianList;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CartesianList;->get(I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 8

    const/4 v2, -0x1

    .line 71
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_7

    move v1, v2

    .line 88
    :cond_6
    :goto_6
    return v1

    .line 74
    :cond_7
    check-cast p1, Ljava/util/List;

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-eq v0, v1, :cond_17

    move v1, v2

    .line 76
    goto :goto_6

    .line 78
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 79
    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_1d
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    .line 82
    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 83
    if-ne v0, v2, :cond_3b

    move v1, v2

    .line 84
    goto :goto_6

    .line 86
    :cond_3b
    iget-object v5, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    mul-int/2addr v0, v4

    add-int/2addr v0, v1

    move v1, v0

    .line 87
    goto :goto_1d
.end method

.method public size()I
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
