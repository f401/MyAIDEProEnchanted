.class public Lcom/s1243808733/android/dx/util/ListIntSet;
.super Ljava/lang/Object;
.source "ListIntSet.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/IntSet;


# instance fields
.field final ints:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    .line 34
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->binarysearch(I)I

    move-result v0

    .line 42
    if-gez v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v1, v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->insert(II)V

    :cond_0
    return-void
.end method

.method public elements()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public has(I)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Lcom/s1243808733/android/dx/util/IntIterator;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 115
    new-instance v0, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;-><init>(Lcom/s1243808733/android/dx/util/ListIntSet;)V

    return-object v0
.end method

.method public merge(Lcom/s1243808733/android/dx/util/IntSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/IntSet;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 66
    instance-of v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;

    if-eqz v1, :cond_8

    .line 67
    check-cast p1, Lcom/s1243808733/android/dx/util/ListIntSet;

    .line 68
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v3

    .line 69
    iget-object v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    .line 74
    :goto_0
    if-ge v2, v4, :cond_0

    if-lt v1, v3, :cond_3

    .line 86
    :cond_0
    :goto_1
    if-lt v2, v4, :cond_7

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    .line 100
    :cond_1
    :goto_2
    return-void

    .line 76
    :cond_2
    iget-object v0, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/ListIntSet;->add(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 75
    :cond_3
    if-ge v2, v4, :cond_4

    iget-object v0, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    iget-object v5, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 78
    :cond_4
    if-eq v2, v4, :cond_0

    move v0, v1

    .line 81
    :goto_3
    if-ge v0, v3, :cond_5

    iget-object v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    iget-object v5, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    if-ge v1, v5, :cond_6

    :cond_5
    move v1, v0

    goto :goto_0

    .line 82
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 87
    :cond_7
    iget-object v0, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/ListIntSet;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_8
    instance-of v1, p1, Lcom/s1243808733/android/dx/util/BitIntSet;

    if-eqz v1, :cond_a

    .line 92
    check-cast p1, Lcom/s1243808733/android/dx/util/BitIntSet;

    .line 94
    :goto_4
    if-gez v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    goto :goto_2

    .line 95
    :cond_9
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 94
    iget-object v1, p1, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    goto :goto_4

    .line 99
    :cond_a
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;

    move-result-object v0

    .line 100
    :goto_5
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/ListIntSet;->add(I)V

    goto :goto_5
.end method

.method public remove(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    .line 52
    if-ltz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->removeIndex(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
