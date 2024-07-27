.class public final Lcom/termux/terminal/TerminalBuffer;
.super Ljava/lang/Object;
.source "TerminalBuffer.java"


# instance fields
.field private mActiveTranscriptRows:I

.field mColumns:I

.field mLines:[Lcom/termux/terminal/TerminalRow;

.field private mScreenFirstRow:I

.field mScreenRows:I

.field mTotalRows:I


# direct methods
.method public constructor <init>(III)V
    .registers 12

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iput v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 30
    iput p1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 31
    iput p2, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 32
    iput p3, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 33
    new-array v0, p2, [Lcom/termux/terminal/TerminalRow;

    iput-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    .line 35
    const/16 v5, 0x20

    sget-wide v6, Lcom/termux/terminal/TextStyle;->NORMAL:J

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    return-void
.end method

.method private blockCopyLinesDown(II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 302
    if-nez p2, :cond_0

    .line 312
    :goto_0
    return-void

    .line 303
    :cond_0
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 305
    add-int/lit8 v0, p2, -0x1

    .line 307
    iget-object v2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v1

    aget-object v2, v2, v3

    .line 309
    :goto_1
    if-gez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    rem-int v1, p1, v1

    aput-object v2, v0, v1

    goto :goto_0

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v4, p1, v0

    add-int/lit8 v4, v4, 0x1

    rem-int/2addr v4, v1

    iget-object v5, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v6, p1, v0

    rem-int/2addr v6, v1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 309
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;
    .registers 8

    .line 386
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    new-instance v0, Lcom/termux/terminal/TerminalRow;

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const/4 v3, 0x0

    int-to-long v4, v3

    invoke-direct {v0, v2, v4, v5}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v0, v1, p1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public blockCopy(IIIIII)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 359
    if-nez p3, :cond_1

    .line 363
    :cond_0
    return-void

    .line 360
    :cond_1
    if-ltz p1, :cond_2

    add-int v0, p1, p3

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v0, v2, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p2, p4

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt v0, v2, :cond_2

    if-ltz p5, :cond_2

    add-int v0, p5, p3

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v0, v2, :cond_2

    if-ltz p6, :cond_2

    add-int v0, p6, p4

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-le v0, v2, :cond_3

    .line 361
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 362
    :cond_3
    if-gt p2, p6, :cond_4

    move v0, v1

    :goto_0
    move v2, v1

    .line 363
    :goto_1
    if-ge v2, p4, :cond_0

    .line 364
    if-eqz v0, :cond_5

    move v1, v2

    .line 365
    :goto_2
    add-int v3, p2, v1

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v3

    .line 366
    add-int/2addr v1, p6

    invoke-virtual {p0, v1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v1

    add-int v4, p1, p3

    invoke-virtual {v1, v3, p1, v4, p5}, Lcom/termux/terminal/TerminalRow;->copyInterval(Lcom/termux/terminal/TerminalRow;III)V

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 364
    :cond_5
    add-int/lit8 v1, v2, 0x1

    sub-int v1, p4, v1

    goto :goto_2
.end method

.method public blockSet(IIIIIJ)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIJ)V"
        }
    .end annotation

    .line 376
    if-ltz p1, :cond_0

    add-int v2, p1, p3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v2, v3, :cond_0

    if-ltz p2, :cond_0

    add-int v2, p2, p4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-le v2, v3, :cond_1

    .line 377
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "Illegal arguments! blockSet("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    :cond_1
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    move/from16 v0, p4

    if-lt v9, v0, :cond_2

    return-void

    .line 381
    :cond_2
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    move/from16 v0, p3

    if-lt v8, v0, :cond_3

    .line 380
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    .line 382
    :cond_3
    add-int v3, p1, v8

    add-int v4, p2, v9

    move-object/from16 v2, p0

    move/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 381
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1
.end method

.method public clearLineWrap(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return-void
.end method

.method public externalToInternalRow(I)I
    .registers 9

    .line 115
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-le p1, v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "extRow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", mScreenRows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", mActiveTranscriptRows="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v0, p1

    .line 118
    if-gez v0, :cond_2

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public getActiveRows()I
    .registers 3

    .line 90
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getActiveTranscriptRows()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    return v0
.end method

.method public getLineWrap(I)Z
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .registers 16

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 46
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int v0, v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int p2, v0

    .line 47
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-lt p4, v0, :cond_1

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 p4, v0, -0x1

    :cond_1
    move v5, p2

    .line 49
    :goto_0
    if-le v5, p4, :cond_2

    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_2
    if-ne v5, p2, :cond_7

    move v3, p1

    .line 51
    :goto_1
    if-ne v5, p4, :cond_8

    .line 53
    add-int/lit8 v0, p3, 0x1

    .line 54
    if-le v0, v2, :cond_c

    move v1, v2

    .line 58
    :goto_2
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, v5}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v4

    aget-object v7, v0, v4

    .line 59
    invoke-virtual {v7, v3}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v4

    .line 60
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-ge v1, v0, :cond_9

    invoke-virtual {v7, v1}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v0

    .line 61
    :goto_3
    if-ne v0, v4, :cond_3

    .line 63
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v7, v0}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v0

    .line 65
    :cond_3
    iget-object v7, v7, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 66
    invoke-virtual {p0, v5}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v8

    .line 69
    if-eqz v8, :cond_a

    if-ne v1, v2, :cond_a

    .line 71
    add-int/lit8 v1, v0, -0x1

    .line 78
    :cond_4
    const/4 v0, -0x1

    if-eq v1, v0, :cond_5

    .line 79
    sub-int v0, v1, v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v7, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 80
    :cond_5
    if-nez v8, :cond_6

    if-ge v5, p4, :cond_6

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_6

    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 50
    :cond_7
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    :cond_8
    move v1, v2

    .line 56
    goto :goto_2

    .line 60
    :cond_9
    invoke-virtual {v7}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v0

    goto :goto_3

    :cond_a
    const/4 v1, -0x1

    move v3, v4

    .line 73
    :goto_4
    if-ge v3, v0, :cond_4

    .line 74
    aget-char v9, v7, v3

    .line 75
    const/16 v10, 0x20

    if-eq v9, v10, :cond_b

    move v1, v3

    .line 73
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    move v1, v0

    goto :goto_2
.end method

.method public getStyleAt(II)J
    .registers 5

    .line 397
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTranscriptText()Ljava/lang/String;
    .registers 5

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resize(III[IJZ)V
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[IJZ)V"
        }
    .end annotation

    .line 143
    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    move/from16 v0, p2

    if-gt v0, v4, :cond_9

    .line 145
    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int v5, v4, p2

    .line 146
    if-lez v5, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-ge v5, v4, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v6, v4, -0x1

    move v4, v5

    :goto_0
    if-gtz v6, :cond_3

    .line 165
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iput v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 166
    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    if-gez v5, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    add-int/2addr v5, v6

    :goto_2
    move-object/from16 v0, p0

    iput v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 167
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 168
    if-eqz p7, :cond_8

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput v5, v0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 169
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, p4, v6

    sub-int v4, v6, v4

    aput v4, p4, v5

    .line 170
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 291
    :goto_4
    const/4 v4, 0x0

    aget v4, p4, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    aget v4, p4, v4

    if-gez v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, p4, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, p4, v4

    :cond_2
    return-void

    .line 149
    :cond_3
    const/4 v5, 0x1

    aget v5, p4, v5

    if-ge v5, v6, :cond_0

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v5

    .line 151
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v7, v7, v5

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v5, v7, v5

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 152
    :cond_4
    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_0

    .line 148
    :cond_5
    add-int/lit8 v5, v6, -0x1

    move v6, v5

    goto :goto_0

    .line 155
    :cond_6
    if-gez v5, :cond_25

    .line 157
    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 158
    if-eq v5, v4, :cond_25

    .line 160
    const/4 v6, 0x0

    :goto_5
    sub-int v7, v4, v5

    if-ge v6, v7, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget v7, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    rem-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v7

    move-wide/from16 v0, p5

    invoke-virtual {v7, v0, v1}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    .line 160
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 166
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    rem-int/2addr v5, v6

    goto/16 :goto_2

    .line 168
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_3

    .line 173
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    move-object/from16 v21, v0

    .line 174
    move/from16 v0, p3

    new-array v4, v0, [Lcom/termux/terminal/TerminalRow;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    .line 175
    const/4 v4, 0x0

    :goto_6
    move/from16 v0, p3

    if-lt v4, v0, :cond_a

    .line 178
    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    move/from16 v22, v0

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move/from16 v23, v0

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    move/from16 v24, v0

    .line 182
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 183
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 184
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 185
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 187
    const/4 v11, -0x1

    .line 188
    const/4 v6, -0x1

    .line 189
    const/4 v5, 0x1

    aget v25, p4, v5

    .line 190
    const/4 v5, 0x0

    aget v26, p4, v5

    .line 191
    const/4 v5, 0x0

    .line 193
    const/4 v9, 0x0

    .line 194
    const/4 v8, 0x0

    .line 199
    const/4 v10, 0x0

    .line 200
    neg-int v4, v4

    move/from16 v20, v4

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    .line 286
    const/4 v4, 0x0

    aput v6, p4, v4

    .line 287
    const/4 v4, 0x1

    aput v11, p4, v4

    goto/16 :goto_4

    .line 176
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    new-instance v6, Lcom/termux/terminal/TerminalRow;

    move/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-direct {v6, v0, v1, v2}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v6, v5, v4

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 202
    :cond_b
    add-int v4, v22, v20

    .line 203
    if-gez v4, :cond_e

    add-int v4, v4, v24

    .line 205
    :goto_8
    aget-object v27, v21, v4

    .line 206
    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/4 v4, 0x0

    move v12, v4

    .line 208
    :goto_9
    if-eqz v27, :cond_d

    if-nez v5, :cond_c

    if-nez v12, :cond_10

    :cond_c
    invoke-virtual/range {v27 .. v27}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 209
    :cond_d
    add-int/lit8 v7, v10, 0x1

    move v4, v5

    .line 200
    :goto_a
    add-int/lit8 v12, v20, 0x1

    move/from16 v20, v12

    move v10, v7

    move v5, v4

    goto :goto_7

    .line 203
    :cond_e
    rem-int v4, v4, v24

    goto :goto_8

    .line 206
    :cond_f
    const/4 v4, 0x1

    move v12, v4

    goto :goto_9

    .line 211
    :cond_10
    if-lez v10, :cond_24

    .line 213
    const/4 v7, 0x0

    move v4, v9

    :goto_b
    if-lt v7, v10, :cond_14

    .line 221
    const/4 v10, 0x0

    move/from16 v19, v8

    move v15, v4

    .line 224
    :goto_c
    const/4 v7, 0x0

    .line 225
    const/4 v4, 0x0

    .line 226
    if-nez v12, :cond_11

    move-object/from16 v0, v27

    iget-boolean v8, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-eqz v8, :cond_16

    .line 228
    :cond_11
    invoke-virtual/range {v27 .. v27}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v7

    .line 229
    if-eqz v12, :cond_12

    const/4 v4, 0x1

    :cond_12
    move v12, v4

    move v13, v7

    .line 237
    :goto_d
    const/16 v16, 0x0

    .line 238
    const/4 v4, 0x0

    int-to-long v8, v4

    .line 239
    const/4 v4, 0x0

    move/from16 v17, v5

    move/from16 v18, v6

    move v14, v11

    :goto_e
    if-lt v4, v13, :cond_19

    move/from16 v4, v17

    move/from16 v5, v18

    move v9, v15

    move/from16 v8, v19

    move v11, v14

    .line 275
    :goto_f
    add-int/lit8 v6, v23, -0x1

    move/from16 v0, v20

    if-eq v0, v6, :cond_20

    move-object/from16 v0, v27

    iget-boolean v6, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-nez v6, :cond_20

    .line 276
    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v6, v6, -0x1

    if-ne v9, v6, :cond_1f

    .line 277
    if-eqz v4, :cond_13

    add-int/lit8 v11, v11, -0x1

    .line 278
    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    .line 282
    :goto_10
    const/4 v8, 0x0

    move v6, v5

    move v7, v10

    goto :goto_a

    .line 214
    :cond_14
    move-object/from16 v0, p0

    iget v8, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_15

    .line 215
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    .line 219
    :goto_11
    const/4 v8, 0x0

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 217
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 231
    :cond_16
    const/4 v4, 0x0

    :goto_12
    invoke-virtual/range {v27 .. v27}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v8

    if-lt v4, v8, :cond_17

    const/4 v4, 0x0

    move v12, v4

    move v13, v7

    goto :goto_d

    .line 233
    :cond_17
    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v8, v8, v4

    const/16 v9, 0x20

    if-eq v8, v9, :cond_18

    .line 234
    add-int/lit8 v7, v4, 0x1

    .line 231
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 241
    :cond_19
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v7, v5, v4

    .line 242
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v4, 0x1

    aget-char v5, v5, v4

    invoke-static {v7, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    move v11, v4

    .line 243
    :goto_13
    invoke-static {v7}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v28

    .line 245
    if-lez v28, :cond_1a

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v8

    .line 248
    :cond_1a
    add-int v4, v19, v28

    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-le v4, v5, :cond_23

    .line 249
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 250
    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v4, v4, -0x1

    if-ne v15, v4, :cond_1c

    .line 251
    if-eqz v17, :cond_22

    add-int/lit8 v4, v14, -0x1

    .line 252
    :goto_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    move v5, v15

    move v14, v4

    .line 256
    :goto_15
    const/16 v19, 0x0

    move v6, v5

    .line 259
    :goto_16
    if-gtz v28, :cond_1d

    if-lez v19, :cond_1d

    const/4 v4, 0x1

    .line 260
    :goto_17
    sub-int v5, v19, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    .line 263
    if-lez v28, :cond_21

    .line 264
    move/from16 v0, v25

    move/from16 v1, v20

    if-ne v0, v1, :cond_26

    move/from16 v0, v26

    move/from16 v1, v16

    if-ne v0, v1, :cond_26

    .line 267
    const/16 v17, 0x1

    move/from16 v15, v17

    move/from16 v18, v19

    move v7, v6

    .line 269
    :goto_18
    add-int v14, v19, v28

    .line 271
    if-eqz v12, :cond_1e

    if-eqz v15, :cond_1e

    move v4, v15

    move/from16 v5, v18

    move v9, v6

    move v8, v14

    move v11, v7

    goto/16 :goto_f

    :cond_1b
    move v11, v4

    .line 242
    goto :goto_13

    .line 254
    :cond_1c
    add-int/lit8 v4, v15, 0x1

    move v5, v4

    goto :goto_15

    .line 259
    :cond_1d
    const/4 v4, 0x0

    goto :goto_17

    :cond_1e
    add-int v4, v16, v28

    move v5, v4

    move/from16 v17, v15

    move/from16 v19, v14

    .line 239
    :goto_19
    add-int/lit8 v4, v11, 0x1

    move/from16 v16, v5

    move v15, v6

    move v14, v7

    goto/16 :goto_e

    .line 280
    :cond_1f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_10

    :cond_20
    move v6, v5

    move v7, v10

    goto/16 :goto_a

    :cond_21
    move/from16 v5, v16

    move v7, v14

    goto :goto_19

    :cond_22
    move v4, v14

    goto :goto_14

    :cond_23
    move v6, v15

    goto :goto_16

    :cond_24
    move/from16 v19, v8

    move v15, v9

    goto/16 :goto_c

    :cond_25
    move v4, v5

    goto/16 :goto_1

    :cond_26
    move/from16 v15, v17

    move v7, v14

    goto :goto_18
.end method

.method public scrollDownOneLine(IIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)V"
        }
    .end annotation

    .line 323
    add-int/lit8 v0, p2, -0x1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-le p2, v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "topMargin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", bottomMargin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", mScreenRows="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    invoke-direct {p0, v0, p1}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 330
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 333
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 335
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 338
    :cond_2
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 340
    iget-object v1, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    new-instance v2, Lcom/termux/terminal/TerminalRow;

    iget v3, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-direct {v2, v3, p3, p4}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v2, v1, v0

    .line 342
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v0, v1, v0

    invoke-virtual {v0, p3, p4}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    goto :goto_0
.end method

.method public setChar(IIIJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJ)V"
        }
    .end annotation

    .line 390
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-lt p1, v0, :cond_1

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "row="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", column="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", mScreenRows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", mColumns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    .line 393
    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    return-void
.end method

.method public setLineWrap(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return-void
.end method

.method public setOrClearEffect(IZZZIIIIII)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZIIIIII)V"
        }
    .end annotation

    move/from16 v5, p7

    .line 403
    :goto_0
    move/from16 v0, p9

    if-lt v5, v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, v5}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v3

    aget-object v6, v2, v3

    .line 405
    if-nez p4, :cond_1

    move/from16 v0, p7

    if-ne v5, v0, :cond_3

    :cond_1
    move/from16 v3, p8

    .line 406
    :goto_1
    if-nez p4, :cond_2

    add-int/lit8 v2, v5, 0x1

    move/from16 v0, p9

    if-ne v2, v0, :cond_4

    :cond_2
    move/from16 v2, p10

    :goto_2
    move v4, v3

    .line 407
    :goto_3
    if-lt v4, v2, :cond_5

    .line 403
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_3
    move/from16 v3, p5

    .line 405
    goto :goto_1

    :cond_4
    move/from16 v2, p6

    .line 406
    goto :goto_2

    .line 408
    :cond_5
    invoke-virtual {v6, v4}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v8

    .line 409
    invoke-static {v8, v9}, Lcom/termux/terminal/TextStyle;->decodeForeColor(J)I

    move-result v7

    .line 410
    invoke-static {v8, v9}, Lcom/termux/terminal/TextStyle;->decodeBackColor(J)I

    move-result v10

    .line 411
    invoke-static {v8, v9}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v3

    .line 412
    if-eqz p3, :cond_6

    .line 414
    xor-int/lit8 v8, v3, -0x1

    and-int/2addr v8, p1

    xor-int/lit8 v9, p1, -0x1

    and-int/2addr v3, v9

    or-int/2addr v3, v8

    .line 420
    :goto_4
    iget-object v8, v6, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v7, v10, v3}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v10

    aput-wide v10, v8, v4

    .line 407
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 415
    :cond_6
    if-eqz p2, :cond_7

    .line 416
    or-int/2addr v3, p1

    goto :goto_4

    .line 418
    :cond_7
    xor-int/lit8 v8, p1, -0x1

    and-int/2addr v3, v8

    goto :goto_4
.end method
