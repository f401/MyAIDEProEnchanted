.class Lcom/google/common/primitives/ImmutableDoubleArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lcom/google/common/primitives/ImmutableDoubleArray;


# direct methods
.method private constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V
    .registers 2

    .line 426
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 428
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray;Lcom/google/common/primitives/ImmutableDoubleArray$1;)V
    .registers 3

    .line 423
    invoke-direct {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 444
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v2, 0x0

    .line 464
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    if-eqz v0, :cond_10

    .line 465
    check-cast p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    .line 466
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object v1, p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 483
    :goto_f
    return v0

    .line 469
    :cond_10
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_16

    move v0, v2

    .line 470
    goto :goto_f

    .line 472
    :cond_16
    check-cast p1, Ljava/util/List;

    .line 473
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_24

    move v0, v2

    .line 474
    goto :goto_f

    .line 476
    :cond_24
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I

    move-result v0

    .line 478
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 479
    instance-of v4, v0, Ljava/lang/Double;

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v4}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D

    move-result-object v4

    aget-wide v4, v4, v1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$500(DD)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_51
    move v0, v2

    .line 480
    goto :goto_f

    .line 482
    :cond_53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 483
    :cond_57
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public get(I)Ljava/lang/Double;
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 423
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->get(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6

    .line 449
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    .line 454
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->lastIndexOf(D)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public size()I
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
