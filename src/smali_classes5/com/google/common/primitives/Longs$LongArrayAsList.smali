.class Lcom/google/common/primitives/Longs$LongArrayAsList;
.super Ljava/util/AbstractList;
.source "Longs.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayAsList"
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


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[J

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([J)V
    .registers 4

    .line 664
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    .line 665
    return-void
.end method

.method constructor <init>([JII)V
    .registers 4

    .line 667
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 668
    iput-object p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    .line 669
    iput p2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .line 670
    iput p3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    .line 671
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7

    .line 692
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

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
    .registers 10
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 740
    if-ne p1, p0, :cond_5

    .line 756
    :cond_4
    :goto_4
    return v0

    .line 743
    :cond_5
    instance-of v2, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v2, :cond_31

    .line 744
    check-cast p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .line 745
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v3

    .line 746
    invoke-virtual {p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_17

    move v0, v1

    .line 747
    goto :goto_4

    :cond_17
    move v2, v1

    .line 749
    :goto_18
    if-ge v2, v3, :cond_4

    .line 750
    iget-object v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-wide v4, v4, v5

    iget-object v6, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v7, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v7, v2

    aget-wide v6, v6, v7

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2e

    move v0, v1

    .line 751
    goto :goto_4

    .line 749
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 756
    :cond_31
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Long;
    .registers 4

    .line 685
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 686
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 656
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->get(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 761
    const/4 v0, 0x1

    .line 762
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v1, v2, :cond_15

    .line 763
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 765
    :cond_15
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7

    .line 698
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    .line 699
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

    move-result v0

    .line 700
    if-ltz v0, :cond_1a

    .line 701
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 704
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public isEmpty()Z
    .registers 2

    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 7

    .line 710
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    .line 711
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/common/primitives/Longs;->access$100([JJII)I

    move-result v0

    .line 712
    if-ltz v0, :cond_1a

    .line 713
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 716
    :goto_19
    return v0

    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .registers 11

    .line 721
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 722
    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int v2, v0, p1

    aget-wide v2, v1, v2

    .line 724
    add-int v4, v0, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 725
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 656
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 675
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 731
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 732
    if-ne p1, p2, :cond_e

    .line 733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 735
    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    goto :goto_d
.end method

.method toLongArray()[J
    .registers 4

    .line 779
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 771
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 772
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_1d
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v0, v2, :cond_30

    .line 773
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 775
    :cond_30
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
