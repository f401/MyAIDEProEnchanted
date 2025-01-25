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
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->binarysearch(I)I

    move-result v0

    if-gez v0, :cond_10

    .line 43
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v1, v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->insert(II)V

    :cond_10
    return-void
.end method

.method public elements()I
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public has(I)Z
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public iterator()Lcom/s1243808733/android/dx/util/IntIterator;
    .registers 2

    .line 115
    new-instance v0, Lcom/s1243808733/android/dx/util/ListIntSet$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/util/ListIntSet$1;-><init>(Lcom/s1243808733/android/dx/util/ListIntSet;)V

    return-object v0
.end method

.method public merge(Lcom/s1243808733/android/dx/util/IntSet;)V
    .registers 8

    .line 66
    instance-of v0, p1, Lcom/s1243808733/android/dx/util/ListIntSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 67
    check-cast p1, Lcom/s1243808733/android/dx/util/ListIntSet;

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    .line 69
    iget-object v2, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_14
    if-ge v1, v2, :cond_4a

    if-ge v3, v0, :cond_4a

    :goto_18
    if-ge v1, v2, :cond_34

    .line 75
    iget-object v4, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    if-ge v4, v5, :cond_34

    .line 76
    iget-object v4, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/util/ListIntSet;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_34
    if-ne v1, v2, :cond_37

    goto :goto_4a

    :cond_37
    :goto_37
    if-ge v3, v0, :cond_14

    .line 81
    iget-object v4, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    if-lt v4, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4a
    :goto_4a
    if-ge v1, v2, :cond_58

    .line 87
    iget-object v0, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/ListIntSet;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 90
    :cond_58
    iget-object p1, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    goto :goto_8c

    .line 91
    :cond_5e
    instance-of v0, p1, Lcom/s1243808733/android/dx/util/BitIntSet;

    if-eqz v0, :cond_7a

    .line 92
    check-cast p1, Lcom/s1243808733/android/dx/util/BitIntSet;

    :goto_64
    if-ltz v1, :cond_74

    .line 95
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 94
    iget-object v0, p1, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v1

    goto :goto_64

    .line 97
    :cond_74
    iget-object p1, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    goto :goto_8c

    .line 99
    :cond_7a
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;

    move-result-object p1

    .line 100
    :goto_7e
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 101
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntIterator;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/ListIntSet;->add(I)V

    goto :goto_7e

    :cond_8c
    :goto_8c
    return-void
.end method

.method public remove(I)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_d

    .line 53
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->removeIndex(I)V

    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
