.class public Lcom/s1243808733/android/dx/util/BitIntSet;
.super Ljava/lang/Object;
.source "BitIntSet.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/IntSet;


# instance fields
.field bits:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->getMax([I)I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    .line 53
    add-int/lit8 v1, p1, 0x1

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->getMax([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/BitIntSet;->ensureCapacity(I)V

    .line 42
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/s1243808733/android/dx/util/Bits;->set([IIZ)V

    return-void
.end method

.method public elements()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->bitCount([I)I

    move-result v0

    return v0
.end method

.method public has(I)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->getMax([I)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lcom/s1243808733/android/dx/util/IntIterator;
    .locals 1

    .line 107
    new-instance v0, Lcom/s1243808733/android/dx/util/BitIntSet$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/util/BitIntSet$1;-><init>(Lcom/s1243808733/android/dx/util/BitIntSet;)V

    return-object v0
.end method

.method public merge(Lcom/s1243808733/android/dx/util/IntSet;)V
    .locals 4

    .line 76
    instance-of v0, p1, Lcom/s1243808733/android/dx/util/BitIntSet;

    if-eqz v0, :cond_1

    .line 77
    check-cast p1, Lcom/s1243808733/android/dx/util/BitIntSet;

    .line 78
    iget-object v0, p1, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->getMax([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/BitIntSet;->ensureCapacity(I)V

    .line 79
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    iget-object v1, p1, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->or([I[I)V

    .line 93
    :cond_0
    return-void

    .line 80
    :cond_1
    instance-of v0, p1, Lcom/s1243808733/android/dx/util/ListIntSet;

    if-eqz v0, :cond_3

    .line 81
    check-cast p1, Lcom/s1243808733/android/dx/util/ListIntSet;

    .line 82
    iget-object v0, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 85
    iget-object v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/BitIntSet;->ensureCapacity(I)V

    :cond_2
    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-object v1, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    iget-object v2, p1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/s1243808733/android/dx/util/Bits;->set([IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_3
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;

    move-result-object v0

    .line 92
    :goto_1
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/BitIntSet;->add(I)V

    goto :goto_1
.end method

.method public remove(I)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->getMax([I)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/s1243808733/android/dx/util/Bits;->set([IIZ)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v2

    const/4 v0, 0x1

    :goto_0
    if-ltz v2, :cond_1

    if-nez v0, :cond_0

    .line 144
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v2

    move v0, v1

    goto :goto_0

    .line 150
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
