.class Lcom/google/common/primitives/Shorts$ShortArrayAsList;
.super Ljava/util/AbstractList;
.source "Shorts.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[S

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([S)V
    .registers 4

    .line 565
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    .line 566
    return-void
.end method

.method constructor <init>([SII)V
    .registers 4

    .line 568
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 569
    iput-object p1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    .line 570
    iput p2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    .line 571
    iput p3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    .line 572
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 593
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->access$000([SSII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 641
    if-ne p1, p0, :cond_5

    .line 657
    :cond_4
    :goto_4
    return v0

    .line 644
    :cond_5
    instance-of v2, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v2, :cond_2f

    .line 645
    check-cast p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .line 646
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v3

    .line 647
    invoke-virtual {p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_17

    move v0, v1

    .line 648
    goto :goto_4

    :cond_17
    move v2, v1

    .line 650
    :goto_18
    if-ge v2, v3, :cond_4

    .line 651
    iget-object v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v5, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-short v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v6, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v6, v2

    aget-short v5, v5, v6

    if-eq v4, v5, :cond_2c

    move v0, v1

    .line 652
    goto :goto_4

    .line 650
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 657
    :cond_2f
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 557
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->get(I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Short;
    .registers 4

    .line 586
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 587
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 662
    const/4 v0, 0x1

    .line 663
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    if-ge v1, v2, :cond_15

    .line 664
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    aget-short v2, v2, v1

    invoke-static {v2}, Lcom/google/common/primitives/Shorts;->hashCode(S)I

    move-result v2

    add-int/2addr v0, v2

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 666
    :cond_15
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 599
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1a

    .line 600
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->access$000([SSII)I

    move-result v0

    .line 601
    if-ltz v0, :cond_1a

    .line 602
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 605
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public isEmpty()Z
    .registers 2

    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 611
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1a

    .line 612
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->access$100([SSII)I

    move-result v0

    .line 613
    if-ltz v0, :cond_1a

    .line 614
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 617
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 557
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->set(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Short;)Ljava/lang/Short;
    .registers 7

    .line 622
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 623
    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int v2, v0, p1

    aget-short v2, v1, v2

    .line 625
    add-int v3, v0, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    aput-short v0, v1, v3

    .line 626
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 576
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    .line 632
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 633
    if-ne p1, p2, :cond_e

    .line 634
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 636
    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    goto :goto_d
.end method

.method toShortArray()[S
    .registers 4

    .line 680
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 672
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    aget-short v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_1d
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    if-ge v0, v2, :cond_30

    .line 674
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 676
    :cond_30
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
