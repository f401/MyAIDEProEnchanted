.class public Lcom/myopicmobile/textwarrior/common/TextBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field protected static final MIN_GAP_SIZE:I = 0x32


# instance fields
.field private _allocMultiplier:I

.field private _cache:Lcom/myopicmobile/textwarrior/common/TextBufferCache;

.field protected _contents:[C

.field protected _gapEndIndex:I

.field protected _gapStartIndex:I

.field protected _lineCount:I

.field protected _spans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/myopicmobile/textwarrior/common/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private _undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/16 v3, 0x32

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x33

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    const v1, 0xffff

    aput-char v1, v0, v3

    iput v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_allocMultiplier:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    iput v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    iput v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I

    new-instance v0, Lcom/myopicmobile/textwarrior/common/TextBufferCache;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_cache:Lcom/myopicmobile/textwarrior/common/TextBufferCache;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/common/UndoStack;-><init>(Lcom/myopicmobile/textwarrior/common/TextBuffer;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    return-void
.end method

.method private countNewlines(II)I
    .registers 7

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findCharOffset(III)I
    .registers 8

    invoke-virtual {p0, p3}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->logicalToRealIndex(I)I

    move-result v1

    invoke-virtual {p0, p3}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->isValid(I)Z

    move-result v0

    const-string v2, "findCharOffsetBackward: Invalid startingOffset given"

    invoke-static {v0, v2}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->assertVerbose(ZLjava/lang/String;)V

    move v0, p2

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    array-length v2, v2

    if-lt v1, v2, :cond_2

    :cond_1
    if-eq v0, p1, :cond_4

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_2
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->realToLogicalIndex(I)I

    move-result v0

    goto :goto_1
.end method

.method private findCharOffsetBackward(III)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->isValid(I)Z

    move-result v1

    const-string v2, "findCharOffsetBackward: Invalid startOffset given"

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->assertVerbose(ZLjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->logicalToRealIndex(I)I

    move-result v1

    :cond_1
    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-le p2, v2, :cond_2

    if-gez v1, :cond_3

    :cond_2
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->realToLogicalIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    :cond_4
    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    const-string v1, "findCharOffsetBackward: Invalid cache entry or line arguments"

    invoke-static {v0, v1}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->assertVerbose(ZLjava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static memoryNeeded(I)I
    .registers 5

    add-int/lit8 v0, p0, 0x32

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->beginBatchEdit()V

    return-void
.end method

.method public canRedo()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->canRedo()Z

    move-result v0

    return v0
.end method

.method public canUndo()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->canUndo()Z

    move-result v0

    return v0
.end method

.method public charAt(I)C
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->logicalToRealIndex(I)I

    move-result v1

    aget-char v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearSpans()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_spans:Ljava/util/List;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_spans:Ljava/util/List;

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    invoke-direct {v1, v2, v2}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public delete(IIJZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJZ)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/myopicmobile/textwarrior/common/UndoStack;->captureDelete(IIJ)V

    :cond_0
    add-int v0, p1, p2

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->isBeforeGap(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->shiftGapLeft(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p2, :cond_3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_cache:Lcom/myopicmobile/textwarrior/common/TextBufferCache;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->invalidateCache(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->gapSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->shiftGapRight(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public endBatchEdit()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->endBatchEdit()V

    return-void
.end method

.method public findLineNumber(I)I
    .registers 11

    const/16 v6, 0xa

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->isValid(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_cache:Lcom/myopicmobile/textwarrior/common/TextBufferCache;

    invoke-virtual {v1, p1}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->getNearestCharOffset(I)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v1

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->logicalToRealIndex(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->logicalToRealIndex(I)I

    move-result v8

    if-le v8, v5, :cond_4

    move v2, v0

    move v3, v0

    move v4, v1

    :goto_1
    if-ge v5, v8, :cond_b

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    array-length v1, v1

    if-lt v5, v1, :cond_3

    move v6, v2

    move v1, v4

    :goto_2
    if-ne v5, v8, :cond_0

    if-eq v3, v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_cache:Lcom/myopicmobile/textwarrior/common/TextBufferCache;

    invoke-virtual {v0, v3, v6}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->updateEntry(II)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v1, v1, v5

    if-ne v1, v6, :cond_8

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p0, v5}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->realToLogicalIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v4, v2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-ne v5, v2, :cond_7

    iget v5, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    move v2, v1

    goto :goto_1

    :cond_4
    if-ge v8, v5, :cond_6

    move v3, v0

    move v4, v0

    move v2, v5

    move v7, v1

    :cond_5
    :goto_4
    if-le v2, v8, :cond_a

    if-lez v2, :cond_a

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    if-ne v2, v1, :cond_9

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    :goto_5
    add-int/lit8 v2, v1, -0x1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v1, v1, v2

    if-ne v1, v6, :cond_5

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->realToLogicalIndex(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v1, v7, -0x1

    move v3, v7

    move v7, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move v3, v0

    move v6, v0

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    move v5, v2

    move v6, v4

    move v1, v7

    goto :goto_2

    :cond_b
    move v6, v2

    move v1, v4

    goto :goto_2
.end method

.method protected final gapSize()I
    .registers 3

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method gapSubSequence(I)[C
    .registers 6

    new-array v1, p1, [C

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLine(I)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->getLineOffset(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->getLineSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLineCount()I
    .registers 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLineOffset(I)I
    .registers 4

    monitor-enter p0

    if-gez p1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_cache:Lcom/myopicmobile/textwarrior/common/TextBufferCache;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->getNearestLine(I)Lcom/myopicmobile/textwarrior/common/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Pair;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Pair;->getSecond()I

    move-result v0

    if-le p1, v1, :cond_3

    invoke-direct {p0, p1, v1, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->findCharOffset(III)I

    move-result v0

    :cond_2
    :goto_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_cache:Lcom/myopicmobile/textwarrior/common/TextBufferCache;

    invoke-virtual {v1, p1, v0}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->updateEntry(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    if-ge p1, v1, :cond_2

    :try_start_1
    invoke-direct {p0, p1, v1, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->findCharOffsetBackward(III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public getLineSize(I)I
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->getLineOffset(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->logicalToRealIndex(I)I

    move-result v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v2, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v3, 0xffff

    if-ne v2, v3, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :try_start_1
    iget v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_spans:Ljava/util/List;

    return-object v0
.end method

.method public final getTextLength()I
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    array-length v0, v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->gapSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    sub-int/2addr v0, v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected growBufferBy(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_allocMultiplier:I

    mul-int/lit8 v0, v0, 0x32

    add-int v1, p1, v0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    array-length v0, v0

    add-int/2addr v0, v1

    new-array v2, v0, [C

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-lt v0, v3, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    :goto_1
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    array-length v3, v3

    if-lt v0, v3, :cond_1

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    iput-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_allocMultiplier:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_allocMultiplier:I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v3, v3, v0

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v3, v0, v1

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v4, v4, v0

    aput-char v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected initGap(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    const v2, 0xffff

    aput-char v2, v0, v1

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v3, v3, v0

    aput-char v3, v2, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public insert([CIJZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIJZ)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    array-length v1, p1

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/myopicmobile/textwarrior/common/UndoStack;->captureInsert(IIJ)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->logicalToRealIndex(I)I

    move-result v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->isBeforeGap(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->shiftGapLeft(I)V

    :cond_1
    :goto_0
    array-length v0, p1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->gapSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    array-length v0, p1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->gapSize()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->growBufferBy(I)V

    :cond_2
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_cache:Lcom/myopicmobile/textwarrior/common/TextBufferCache;

    invoke-virtual {v0, p2}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->invalidateCache(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->shiftGapRight(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    aget-char v1, p1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    :try_start_2
    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I

    :cond_5
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    aget-char v3, p1, v0

    aput-char v3, v1, v2

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isBatchEdit()Z
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->isBatchEdit()Z

    move-result v0

    return v0
.end method

.method protected final isBeforeGap(I)Z
    .registers 3

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isValid(I)Z
    .registers 3

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->getTextLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public length()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->getTextLength()I

    move-result v0

    return v0
.end method

.method protected final logicalToRealIndex(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->isBeforeGap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->gapSize()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method protected final realToLogicalIndex(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->isBeforeGap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->gapSize()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method public redo()I
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->redo()I

    move-result v0

    return v0
.end method

.method public setBuffer([C)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p1, v2, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->setBuffer([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    aget-char v3, p1, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuffer([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->initGap(I)V

    iput p3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_allocMultiplier:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpans(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myopicmobile/textwarrior/common/Pair;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_spans:Ljava/util/List;

    return-void
.end method

.method protected final shiftGapLeft(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method protected final shiftGapRight(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I

    goto :goto_0
.end method

.method shiftGapStart(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    invoke-direct {p0, v1, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->countNewlines(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I

    :goto_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_cache:Lcom/myopicmobile/textwarrior/common/TextBufferCache;

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->realToLogicalIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/TextBufferCache;->invalidateCache(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    add-int/2addr v1, p1

    neg-int v2, p1

    invoke-direct {p0, v1, v2}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->countNewlines(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_lineCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    add-int v0, p1, p2

    :try_start_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->getTextLength()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->getTextLength()I

    move-result v0

    sub-int p2, v0, p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->logicalToRealIndex(I)I

    move-result v2

    new-array v3, p2, [C

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, p2, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_contents:[C

    aget-char v0, v0, v2

    aput-char v0, v3, v1

    add-int/lit8 v0, v2, 0x1

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapStartIndex:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_gapEndIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->getTextLength()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->charAt(I)C

    move-result v3

    const v4, 0xffff

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public undo()I
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/TextBuffer;->_undoStack:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->undo()I

    move-result v0

    return v0
.end method
