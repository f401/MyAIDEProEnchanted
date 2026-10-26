.class public Lcom/s1243808733/android/dx/util/ListIntSet;
.super Ljava/lang/Object;
.source "ListIntSet.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/IntSet;


# instance fields
.field final ints:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->binarysearch(I)I

    move-result v0

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
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public has(I)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lcom/s1243808733/android/dx/util/IntIterator;
    .locals 1

    .line 115
    new-instance v0, Lcom/s1243808733/android/dx/util/ListIntSet$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/util/ListIntSet$1;-><init>(Lcom/s1243808733/android/dx/util/ListIntSet;)V

    return-object v0
.end method

.method public merge(Lcom/s1243808733/android/dx/util/IntSet;)V
    .locals 6

    const/4 v0, 0x0

    .line 66
    instance-of v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;

    if-eqz v1, :cond_4

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

    :goto_0
    if-ge v1, v4, :cond_8

    if-ge v2, v3, :cond_8

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    .line 75
    iget-object v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    iget-object v5, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 76
    iget-object v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/ListIntSet;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-ne v0, v4, :cond_1

    .line 81
    :goto_2
    if-ge v0, v4, :cond_2

    .line 87
    iget-object v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/ListIntSet;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 76
    :cond_1
    :goto_3
    if-ge v2, v3, :cond_7

    .line 81
    iget-object v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    iget-object v5, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    if-lt v1, v5, :cond_7

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    .line 101
    :cond_3
    :goto_4
    return-void

    .line 91
    :cond_4
    instance-of v1, p1, Lcom/s1243808733/android/dx/util/BitIntSet;

    if-eqz v1, :cond_6

    .line 92
    check-cast p1, Lcom/s1243808733/android/dx/util/BitIntSet;

    :goto_5
    if-ltz v0, :cond_5

    .line 95
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 94
    iget-object v1, p1, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    goto :goto_5

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    goto :goto_4

    .line 99
    :cond_6
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;

    move-result-object v0

    .line 100
    :goto_6
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/ListIntSet;->add(I)V

    goto :goto_6

    :cond_7
    move v1, v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public remove(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->removeIndex(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
