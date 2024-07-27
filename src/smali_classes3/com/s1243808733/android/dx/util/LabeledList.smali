.class public Lcom/s1243808733/android/dx/util/LabeledList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "LabeledList.java"


# instance fields
.field private final labelToIndex:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    .line 35
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/util/LabeledList;)V
    .registers 5

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

    .line 49
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {p0, v0, v2}, Lcom/s1243808733/android/dx/util/LabeledList;->set0(ILjava/lang/Object;)V

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addLabelIndex(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    .line 95
    const/4 v0, 0x0

    :goto_0
    sub-int v2, p1, v1

    if-le v0, v2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private rebuildLabelToIndex()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/LabeledList;->size()I

    move-result v2

    .line 159
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/LabeledItem;

    .line 162
    if-eqz v0, :cond_1

    .line 163
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/LabeledItem;->getLabel()I

    move-result v0

    invoke-virtual {v3, v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    .line 159
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private removeLabel(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    return-void
.end method


# virtual methods
.method public final getLabelsInOrder()[I
    .registers 5

    .line 128
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/LabeledList;->size()I

    move-result v2

    .line 129
    new-array v3, v2, [I

    .line 131
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 139
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 140
    return-object v3

    .line 132
    :cond_0
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/LabeledList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/LabeledItem;

    .line 133
    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "null at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/LabeledItem;->getLabel()I

    move-result v0

    aput v0, v3, v1

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final getMaxLabel()I
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    .line 66
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->shrink(I)V

    .line 74
    return v0

    .line 66
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final indexOfLabel(I)I
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/LabeledList;->labelToIndex:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 112
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/util/LabeledItem;",
            ")V"
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/util/LabeledList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/LabeledItem;

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/util/LabeledList;->set0(ILjava/lang/Object;)V

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/LabeledItem;->getLabel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/LabeledList;->removeLabel(I)V

    .line 183
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
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 146
    invoke-super {p0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->shrinkToFit()V

    .line 148
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/LabeledList;->rebuildLabelToIndex()V

    return-void
.end method
