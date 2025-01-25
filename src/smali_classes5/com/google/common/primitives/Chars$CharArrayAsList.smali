.class Lcom/google/common/primitives/Chars$CharArrayAsList;
.super Ljava/util/AbstractList;
.source "Chars.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Chars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[C

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([C)V
    .registers 4

    .line 516
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    .line 517
    return-void
.end method

.method constructor <init>([CII)V
    .registers 4

    .line 519
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    .line 521
    iput p2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    .line 522
    iput p3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    .line 523
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6

    .line 544
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    check-cast p1, Ljava/lang/Character;

    .line 545
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->access$000([CCII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    .line 544
    :goto_18
    return v0

    .line 545
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

    .line 593
    if-ne p1, p0, :cond_5

    .line 609
    :cond_4
    :goto_4
    return v0

    .line 596
    :cond_5
    instance-of v2, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v2, :cond_2f

    .line 597
    check-cast p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    .line 598
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v3

    .line 599
    invoke-virtual {p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_17

    move v0, v1

    .line 600
    goto :goto_4

    :cond_17
    move v2, v1

    .line 602
    :goto_18
    if-ge v2, v3, :cond_4

    .line 603
    iget-object v4, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v5, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-char v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v6, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v6, v2

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_2c

    move v0, v1

    .line 604
    goto :goto_4

    .line 602
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 609
    :cond_2f
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Character;
    .registers 4

    .line 537
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 538
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 508
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 614
    const/4 v0, 0x1

    .line 615
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    if-ge v1, v2, :cond_15

    .line 616
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    aget-char v2, v2, v1

    invoke-static {v2}, Lcom/google/common/primitives/Chars;->hashCode(C)I

    move-result v2

    add-int/2addr v0, v2

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 618
    :cond_15
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6

    .line 551
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1a

    .line 552
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->access$000([CCII)I

    move-result v0

    .line 553
    if-ltz v0, :cond_1a

    .line 554
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 557
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public isEmpty()Z
    .registers 2

    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    .line 563
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1a

    .line 564
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->access$100([CCII)I

    move-result v0

    .line 565
    if-ltz v0, :cond_1a

    .line 566
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 569
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public set(ILjava/lang/Character;)Ljava/lang/Character;
    .registers 7

    .line 574
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 575
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int v2, v0, p1

    aget-char v2, v1, v2

    .line 577
    add-int v3, v0, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, v1, v3

    .line 578
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 508
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->set(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 527
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

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
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 583
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    .line 584
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 585
    if-ne p1, p2, :cond_e

    .line 586
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 588
    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    goto :goto_d
.end method

.method toCharArray()[C
    .registers 4

    .line 632
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 624
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_1d
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->end:I

    if-ge v0, v2, :cond_30

    .line 626
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->array:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 628
    :cond_30
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
