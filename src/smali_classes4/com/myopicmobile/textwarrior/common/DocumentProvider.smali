.class public Lcom/myopicmobile/textwarrior/common/DocumentProvider;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private _currIndex:I

.field private final _theText:Lcom/myopicmobile/textwarrior/common/Document;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Document;

    invoke-direct {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;-><init>(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    return-void
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/common/Document;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    return-void
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/common/DocumentProvider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    iget-object v0, p1, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    return-void
.end method


# virtual methods
.method public analyzeWordWrap()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->analyzeWordWrap()V

    return-void
.end method

.method public beginBatchEdit()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->beginBatchEdit()V

    return-void
.end method

.method public canRedo()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->canRedo()Z

    move-result v0

    return v0
.end method

.method public canUndo()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->canUndo()Z

    move-result v0

    return v0
.end method

.method public charAt(I)C
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->charAt(I)C

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public clearSpans()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->clearSpans()V

    return-void
.end method

.method public deleteAt(IIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    if-gtz p2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->getTextLength()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    const/4 v6, 0x1

    move v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/myopicmobile/textwarrior/common/Document;->delete(IIJZ)V

    goto :goto_a
.end method

.method public deleteAt(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    move v2, p1

    move-wide v4, p2

    move v6, v3

    invoke-virtual/range {v1 .. v6}, Lcom/myopicmobile/textwarrior/common/Document;->delete(IIJZ)V

    goto :goto_9
.end method

.method public docLength()I
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->getTextLength()I

    move-result v0

    return v0
.end method

.method public endBatchEdit()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->endBatchEdit()V

    return-void
.end method

.method public findLineNumber(I)I
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->findLineNumber(I)I

    move-result v0

    return v0
.end method

.method public findRowNumber(I)I
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->findRowNumber(I)I

    move-result v0

    return v0
.end method

.method public getLineOffset(I)I
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->getLineOffset(I)I

    move-result v0

    return v0
.end method

.method public getRow(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->getRow(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowCount()I
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->getRowCount()I

    move-result v0

    return v0
.end method

.method public getRowOffset(I)I
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->getRowOffset(I)I

    move-result v0

    return v0
.end method

.method public getRowSize(I)I
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->getRowSize(I)I

    move-result v0

    return v0
.end method

.method public getSpans()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myopicmobile/textwarrior/common/Pair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->getSpans()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/Document;->getTextLength()I

    move-result v1

    if-lt v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public insert(ILjava/lang/CharSequence;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    new-array v2, v6, [C

    aput-char v0, v2, v3

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/myopicmobile/textwarrior/common/Document;->insert([CIJZ)V

    return-void
.end method

.method public insertBefore(CIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CIJ)V"
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p2}, Lcom/myopicmobile/textwarrior/common/Document;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    new-array v2, v6, [C

    const/4 v0, 0x0

    aput-char p1, v2, v0

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/myopicmobile/textwarrior/common/Document;->insert([CIJZ)V

    goto :goto_9
.end method

.method public insertBefore([CIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p2}, Lcom/myopicmobile/textwarrior/common/Document;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_b

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/myopicmobile/textwarrior/common/Document;->insert([CIJZ)V

    goto :goto_b
.end method

.method public isBatchEdit()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->isBatchEdit()Z

    move-result v0

    return v0
.end method

.method public isWordWrap()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->isWordWrap()Z

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->length()I

    move-result v0

    return v0
.end method

.method public next()C
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/Document;->charAt(I)C

    move-result v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    return v0
.end method

.method public redo()I
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->redo()I

    move-result v0

    return v0
.end method

.method public seekChar(I)I
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iput p1, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    :goto_a
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    return v0

    :cond_d
    const/4 v0, -0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_currIndex:I

    goto :goto_a
.end method

.method public setMetrics(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->setMetrics(Lcom/myopicmobile/textwarrior/common/Document$TextFieldMetrics;)V

    return-void
.end method

.method public setSpans(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myopicmobile/textwarrior/common/Pair;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->setSpans(Ljava/util/List;)V

    return-void
.end method

.method public setWordWrap(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/Document;->setWordWrap(Z)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0, p1, p2}, Lcom/myopicmobile/textwarrior/common/Document;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undo()I
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->_theText:Lcom/myopicmobile/textwarrior/common/Document;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Document;->undo()I

    move-result v0

    return v0
.end method
