.class public Lcom/android/apksig/internal/util/InclusiveIntRange;
.super Ljava/lang/Object;


# instance fields
.field private final max:I

.field private final min:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->min:I

    iput p2, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->max:I

    return-void
.end method

.method public static from(I)Lcom/android/apksig/internal/util/InclusiveIntRange;
    .registers 3

    new-instance v0, Lcom/android/apksig/internal/util/InclusiveIntRange;

    const v1, 0x7fffffff

    invoke-direct {v0, p0, v1}, Lcom/android/apksig/internal/util/InclusiveIntRange;-><init>(II)V

    return-object v0
.end method

.method public static fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;
    .registers 3

    new-instance v0, Lcom/android/apksig/internal/util/InclusiveIntRange;

    invoke-direct {v0, p0, p1}, Lcom/android/apksig/internal/util/InclusiveIntRange;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->max:I

    return v0
.end method

.method public getMin()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->min:I

    return v0
.end method

.method public getValuesNotIn(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/util/InclusiveIntRange;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/util/InclusiveIntRange;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget v0, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->min:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v2, 0x0

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/util/InclusiveIntRange;

    iget v4, v0, Lcom/android/apksig/internal/util/InclusiveIntRange;->max:I

    if-gt v1, v4, :cond_2

    iget v0, v0, Lcom/android/apksig/internal/util/InclusiveIntRange;->min:I

    if-ge v1, v0, :cond_4

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->max:I

    if-lt v4, v0, :cond_6

    if-nez v2, :cond_0

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->max:I

    if-gt v1, v0, :cond_9

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_8
    iget v0, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->max:I

    invoke-static {v1, v0}, Lcom/android/apksig/internal/util/InclusiveIntRange;->fromTo(II)Lcom/android/apksig/internal/util/InclusiveIntRange;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v2, :cond_5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->min:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->max:I

    const v2, 0x7fffffff

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/apksig/internal/util/InclusiveIntRange;->max:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\u221e)"

    goto :goto_0
.end method
