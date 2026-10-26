.class public Lcom/s1243808733/android/dx/util/LabeledList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "LabeledList.java"


# instance fields
.field private final labelToIndex:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    .line 35
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/util/LabeledList;)V
    .locals 3

    .line 44
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/LabeledList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    .line 45
    iget-object v0, p1, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->mutableCopy()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    .line 47
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/LabeledList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 50
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0, v0, v2}, Lcom/s1243808733/android/dx/util/LabeledList;->set0(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addLabelIndex(II)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    sub-int v2, p1, v1

    if-gt v0, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    return-void
.end method

.method private rebuildLabelToIndex()V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/LabeledList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/LabeledItem;

    if-eqz v0, :cond_0

    .line 163
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/LabeledItem;->getLabel()I

    move-result v0

    invoke-virtual {v3, v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeLabel(I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    return-void
.end method


# virtual methods
.method public final getLabelsInOrder()[I
    .locals 4

    .line 128
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/LabeledList;->size()I

    move-result v2

    .line 129
    new-array v3, v2, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 132
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/LabeledItem;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/LabeledItem;->getLabel()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "null at index "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    return-object v3
.end method

.method public final getMaxLabel()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->shrink(I)V

    return v0
.end method

.method public final indexOfLabel(I)I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method protected set(ILcom/s1243808733/android/dx/util/LabeledItem;)V
    .locals 1

    .line 175
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/util/LabeledList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/LabeledItem;

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/util/LabeledList;->set0(ILjava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/LabeledItem;->getLabel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/LabeledList;->removeLabel(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 184
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/LabeledItem;->getLabel()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dx/util/LabeledList;->addLabelIndex(II)V

    :cond_1
    return-void
.end method

.method public shrinkToFit()V
    .locals 0

    .line 146
    invoke-super {p0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->shrinkToFit()V

    .line 148
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/LabeledList;->rebuildLabelToIndex()V

    return-void
.end method
