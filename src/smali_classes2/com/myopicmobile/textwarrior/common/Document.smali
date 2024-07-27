.class public Lcom/myopicmobile/textwarrior/common/Document;
.super Lcom/myopicmobile/textwarrior/common/TextBuffer;


# instance fields
.field private _isWordWrap:Z

.field private _metrics:Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;

.field private _rowTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V
    .registers 3

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_isWordWrap:Z

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/Document;->_metrics:Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/Document;->resetRowTable()V

    return-void
.end method

.method private adjustOffsetOfRowsFrom(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private analyzeWordWrap(III)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    const/16 v11, 0xa

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_isWordWrap:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/common/Document;->logicalToRealIndex(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/myopicmobile/textwarrior/common/Document;->logicalToRealIndex(I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :goto_1
    return-void

    :cond_0
    iget v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    :cond_1
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v3, v3, v0

    if-ne v3, v11, :cond_2

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/Document;->realToLogicalIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/Document;->hasMinimumWidthForWordWrap()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Not enough space to do word wrap"

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/common/Document;->logicalToRealIndex(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/myopicmobile/textwarrior/common/Document;->logicalToRealIndex(I)I

    move-result v9

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/Document;->_metrics:Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;

    invoke-interface {v1}, Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;->getRowWidth()I

    move-result v3

    move v4, p2

    move v5, v6

    move v7, v3

    :goto_2
    if-lt v0, v9, :cond_5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v10, v0, v1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_metrics:Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;

    invoke-interface {v0, v10}, Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;->getAdvance(C)I

    move-result v0

    add-int v2, v5, v0

    const/16 v0, 0x20

    if-eq v10, v0, :cond_7

    const/16 v0, 0x9

    if-eq v10, v0, :cond_7

    if-eq v10, v11, :cond_7

    const v0, 0xffff

    if-eq v10, v0, :cond_7

    move v0, v6

    :goto_4
    if-eqz v0, :cond_f

    if-gt v2, v7, :cond_8

    sub-int v0, v7, v2

    :cond_6
    :goto_5
    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/common/Document;->realToLogicalIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v5, v6

    :goto_6
    if-ne v10, v11, :cond_e

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    :goto_7
    add-int/lit8 v0, v1, 0x1

    move v7, v2

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    if-le v2, v3, :cond_d

    invoke-virtual {p0, v4}, Lcom/myopicmobile/textwarrior/common/Document;->logicalToRealIndex(I)I

    move-result v2

    if-eq v4, p2, :cond_a

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v4, v0, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v0, v3

    :goto_8
    if-gt v2, v1, :cond_6

    iget v4, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-ne v2, v4, :cond_b

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    :cond_b
    iget-object v4, p0, Lcom/myopicmobile/textwarrior/common/Document;->_metrics:Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v5, v5, v2

    invoke-interface {v4, v5}, Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;->getAdvance(C)I

    move-result v4

    if-le v4, v0, :cond_c

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/common/Document;->realToLogicalIndex(I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v0, v3, v4

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    sub-int/2addr v0, v4

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v0, v3, v2

    goto :goto_5

    :cond_e
    move v2, v0

    goto :goto_7

    :cond_f
    move v5, v2

    move v0, v7

    goto :goto_6

    :cond_10
    move v1, v0

    goto/16 :goto_3
.end method

.method private findNextLineFrom(I)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->logicalToRealIndex(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/Document;->realToLogicalIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    :cond_2
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v1, v1, v0

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hasMinimumWidthForWordWrap()Z
    .registers 4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_metrics:Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;

    invoke-interface {v0}, Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;->getRowWidth()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/Document;->_metrics:Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;

    const/16 v2, 0x4d

    invoke-interface {v1, v2}, Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;->getAdvance(C)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeRowMetadata(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resetRowTable()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    return-void
.end method

.method private updateWordWrapAfterEdit(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v2, p2, p3

    invoke-direct {p0, v1, v2}, Lcom/myopicmobile/textwarrior/common/Document;->removeRowMetadata(II)V

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p3}, Lcom/myopicmobile/textwarrior/common/Document;->adjustOffsetOfRowsFrom(II)V

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, v0, p2}, Lcom/myopicmobile/textwarrior/common/Document;->analyzeWordWrap(III)V

    return-void
.end method


# virtual methods
.method public analyzeWordWrap()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/Document;->resetRowTable()V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_isWordWrap:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/Document;->hasMinimumWidthForWordWrap()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_metrics:Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;

    invoke-interface {v0}, Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;->getRowWidth()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Text field has non-zero width but still too small for word wrap"

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/Document;->getTextLength()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/Document;->analyzeWordWrap(III)V

    goto :goto_0
.end method

.method public delete(IIJZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->delete(IIJZ)V

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->findRowNumber(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->findNextLineFrom(I)I

    move-result v1

    neg-int v2, p2

    invoke-direct {p0, v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/Document;->updateWordWrapAfterEdit(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findRowNumber(I)I
    .registers 8

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    add-int/lit8 v2, v2, -0x1

    move v4, v0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int v0, v4, v5

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_3

    if-ge p1, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/Document;->getTextLength()I

    move-result v0

    move v3, v0

    goto :goto_2

    :cond_3
    if-lt p1, v3, :cond_4

    add-int/lit8 v0, v2, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v5, v0

    goto :goto_1
.end method

.method public getRow(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->getRowSize(I)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Document;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRowCount()I
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRowOffset(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->isInvalidRow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getRowSize(I)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->isInvalidRow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/Document;->getTextLength()I

    move-result v1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public insert([CIJZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIJZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->insert([CIJZ)V

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/common/Document;->findRowNumber(I)I

    move-result v0

    array-length v1, p1

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/myopicmobile/textwarrior/common/Document;->findNextLineFrom(I)I

    move-result v1

    array-length v2, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/myopicmobile/textwarrior/common/Document;->updateWordWrapAfterEdit(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isInvalidRow(I)Z
    .registers 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_rowTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWordWrap()Z
    .registers 2

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_isWordWrap:Z

    return v0
.end method

.method public setMetrics(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/Document;->_metrics:Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->memoryNeeded(I)I

    move-result v1

    new-array v3, v1, [C

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v3, v2, v0}, Lcom/myopicmobile/textwarrior/common/Document;->setBuffer([CII)V

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v3, v1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setWordWrap(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_isWordWrap:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_isWordWrap:Z

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/Document;->analyzeWordWrap()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_isWordWrap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/Document;->_isWordWrap:Z

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/Document;->analyzeWordWrap()V

    goto :goto_0
.end method

.method shiftGapStart(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->shiftGapStart(I)V

    if-eqz p1, :cond_0

    if-lez p1, :cond_1

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    sub-int/2addr v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/Document;->findRowNumber(I)I

    move-result v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    invoke-direct {p0, v1}, Lcom/myopicmobile/textwarrior/common/Document;->findNextLineFrom(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/myopicmobile/textwarrior/common/Document;->updateWordWrapAfterEdit(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
