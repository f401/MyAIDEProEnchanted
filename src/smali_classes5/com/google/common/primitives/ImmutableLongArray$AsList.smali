.class Lcom/google/common/primitives/ImmutableLongArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableLongArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lcom/google/common/primitives/ImmutableLongArray;


# direct methods
.method private constructor <init>(Lcom/google/common/primitives/ImmutableLongArray;)V
    .registers 2

    .line 423
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    .line 425
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/primitives/ImmutableLongArray;Lcom/google/common/primitives/ImmutableLongArray$1;)V
    .registers 3

    .line 420
    invoke-direct {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableLongArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 441
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->indexOf(Ljava/lang/Object;)I

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

    .line 461
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    if-eqz v0, :cond_10

    .line 462
    check-cast p1, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    .line 463
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    iget-object v1, p1, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, v1}, Lcom/google/common/primitives/ImmutableLongArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 480
    :goto_f
    return v0

    .line 466
    :cond_10
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_16

    move v0, v2

    .line 467
    goto :goto_f

    .line 469
    :cond_16
    check-cast p1, Ljava/util/List;

    .line 470
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_24

    move v0, v2

    .line 471
    goto :goto_f

    .line 473
    :cond_24
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-static {v0}, Lcom/google/common/primitives/ImmutableLongArray;->access$100(Lcom/google/common/primitives/ImmutableLongArray;)I

    move-result v0

    .line 475
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 476
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-static {v4}, Lcom/google/common/primitives/ImmutableLongArray;->access$000(Lcom/google/common/primitives/ImmutableLongArray;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_51

    :cond_4f
    move v0, v2

    .line 477
    goto :goto_f

    .line 479
    :cond_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 480
    :cond_55
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public get(I)Ljava/lang/Long;
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/ImmutableLongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 420
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->get(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6

    .line 446
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/primitives/ImmutableLongArray;->indexOf(J)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    .line 451
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/primitives/ImmutableLongArray;->lastIndexOf(J)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public size()I
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableLongArray;->subArray(II)Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
