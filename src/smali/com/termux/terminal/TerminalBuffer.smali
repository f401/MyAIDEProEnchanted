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
    .locals 8

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 19
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
    .locals 6

    if-nez p2, :cond_0

    .line 312
    :goto_0
    return-void

    .line 303
    :cond_0
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    add-int/lit8 v0, p2, -0x1

    .line 307
    iget-object v2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v1

    aget-object v2, v2, v3

    :goto_1
    if-ltz v0, :cond_1

    .line 310
    iget-object v3, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v4, p1, v0

    add-int/lit8 v5, v4, 0x1

    rem-int/2addr v5, v1

    rem-int/2addr v4, v1

    aget-object v4, v3, v4

    aput-object v4, v3, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    rem-int v1, p1, v1

    aput-object v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;
    .locals 6

    .line 386
    iget-object v1, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v0, v1, p1

    if-nez v0, :cond_0

    new-instance v0, Lcom/termux/terminal/TerminalRow;

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method public blockCopy(IIIIII)V
    .locals 5

    const/4 v3, 0x0

    if-nez p3, :cond_1

    .line 366
    :cond_0
    return-void

    .line 4294967295
    :cond_1
    if-ltz p1, :cond_4

    add-int v4, p1, p3

    .line 360
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v4, v0, :cond_4

    if-ltz p2, :cond_4

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int v2, p2, p4

    if-gt v2, v1, :cond_4

    if-ltz p5, :cond_4

    add-int v2, p3, p5

    if-gt v2, v0, :cond_4

    if-ltz p6, :cond_4

    add-int v0, p6, p4

    if-gt v0, v1, :cond_4

    if-le p2, p6, :cond_2

    const/4 v0, 0x1

    move v2, v0

    move v1, v3

    :goto_0
    if-ge v1, p4, :cond_0

    if-eqz v2, :cond_3

    move v0, v1

    .line 365
    :goto_1
    add-int v3, p2, v0

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v3

    .line 366
    add-int/2addr v0, p6

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v0

    invoke-virtual {v0, v3, p1, v4, p5}, Lcom/termux/terminal/TerminalRow;->copyInterval(Lcom/termux/terminal/TerminalRow;III)V

    add-int/lit8 v3, v1, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    move v1, v3

    .line 360
    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    sub-int v0, p4, v0

    goto :goto_1

    .line 361
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blockSet(IIIIIJ)V
    .locals 8

    if-ltz p1, :cond_1

    .line 376
    add-int v0, p1, p3

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v0, v1, :cond_1

    if-ltz p2, :cond_1

    add-int v0, p2, p4

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, p4, :cond_2

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, p3, :cond_0

    .line 382
    add-int v1, p1, v6

    add-int v2, p2, v7

    move-object v0, p0

    move v3, p5

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal arguments! blockSet("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_2
    return-void
.end method

.method public clearLineWrap(I)V
    .locals 2

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
    .locals 2

    .line 115
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt p1, v0, :cond_1

    .line 117
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v0, p1

    .line 118
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gez v0, :cond_0

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    rem-int/2addr v0, v1

    goto :goto_0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extRow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenRows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mActiveTranscriptRows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActiveRows()I
    .locals 2

    .line 90
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getActiveTranscriptRows()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    return v0
.end method

.method public getLineWrap(I)Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 11

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

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

    add-int/lit8 p4, v0, -0x1

    :cond_1
    move v5, p2

    :goto_0
    if-gt v5, p4, :cond_c

    if-ne v5, p2, :cond_8

    move v2, p1

    :goto_1
    if-ne v5, p4, :cond_2

    add-int/lit8 v0, p3, 0x1

    if-le v0, v1, :cond_3

    :cond_2
    move v0, v1

    .line 58
    :cond_3
    iget-object v3, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, v5}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v4

    aget-object v3, v3, v4

    .line 59
    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v4

    .line 60
    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-ge v0, v2, :cond_9

    invoke-virtual {v3, v0}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v2

    :goto_2
    if-ne v2, v4, :cond_4

    .line 63
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v2

    .line 65
    :cond_4
    iget-object v7, v3, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 68
    invoke-virtual {p0, v5}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v8

    if-eqz v8, :cond_a

    if-ne v0, v1, :cond_a

    add-int/lit8 v0, v2, -0x1

    .line 74
    :cond_5
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 79
    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v7, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_6
    if-nez v8, :cond_7

    if-ge v5, p4, :cond_7

    .line 80
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_7

    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 47
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    .line 60
    :cond_9
    invoke-virtual {v3}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v2

    goto :goto_2

    .line 68
    :cond_a
    const/4 v0, -0x1

    move v3, v4

    :goto_3
    if-ge v3, v2, :cond_5

    .line 74
    aget-char v9, v7, v3

    const/16 v10, 0x20

    if-eq v9, v10, :cond_b

    move v0, v3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 82
    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAt(II)J
    .locals 2

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
    .locals 4

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
    .locals 29

    .line 143
    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    move/from16 v0, p2

    if-gt v0, v4, :cond_a

    .line 145
    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int v4, v5, p2

    if-lez v4, :cond_6

    if-ge v4, v5, :cond_6

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-lez v5, :cond_0

    .line 149
    const/4 v6, 0x1

    aget v6, p4, v6

    if-lt v6, v5, :cond_3

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

    iget v6, v0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gez v5, :cond_8

    add-int/2addr v5, v6

    :goto_2
    move-object/from16 v0, p0

    iput v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 167
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-eqz p7, :cond_9

    const/4 v5, 0x0

    .line 168
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

    .line 150
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v6

    .line 151
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v6, v7, v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_0

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_6
    if-gez v4, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v6, 0x0

    :goto_5
    sub-int v7, v5, v4

    if-ge v6, v7, :cond_7

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

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    move v4, v5

    goto/16 :goto_1

    .line 166
    :cond_8
    rem-int/2addr v5, v6

    goto :goto_2

    .line 168
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_3

    .line 173
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    move-object/from16 v22, v0

    .line 174
    move/from16 v0, p3

    new-array v4, v0, [Lcom/termux/terminal/TerminalRow;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    const/4 v4, 0x0

    :goto_6
    move/from16 v0, p3

    if-ge v4, v0, :cond_b

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    new-instance v6, Lcom/termux/terminal/TerminalRow;

    move/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-direct {v6, v0, v1, v2}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 178
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    move/from16 v21, v0

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

    .line 189
    const/4 v5, 0x1

    aget v25, p4, v5

    .line 190
    const/4 v5, 0x0

    aget v15, p4, v5

    neg-int v5, v4

    const/4 v12, -0x1

    const/4 v7, -0x1

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    move/from16 v0, v23

    if-ge v5, v0, :cond_20

    add-int v4, v21, v5

    if-gez v4, :cond_e

    add-int v4, v4, v24

    .line 205
    :goto_8
    aget-object v26, v22, v4

    move/from16 v0, v25

    if-ne v5, v0, :cond_f

    const/4 v4, 0x1

    move v8, v4

    :goto_9
    if-eqz v26, :cond_d

    if-nez v14, :cond_c

    if-nez v8, :cond_10

    .line 208
    :cond_c
    invoke-virtual/range {v26 .. v26}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 205
    :cond_d
    add-int/lit8 v4, v19, 0x1

    move v6, v5

    move v8, v4

    move v11, v12

    move v13, v14

    move/from16 v16, v21

    :goto_a
    add-int/lit8 v5, v6, 0x1

    move v12, v11

    move/from16 v19, v8

    move v14, v13

    move/from16 v21, v16

    goto :goto_7

    .line 203
    :cond_e
    rem-int v4, v4, v24

    goto :goto_8

    .line 205
    :cond_f
    const/4 v4, 0x0

    move v8, v4

    goto :goto_9

    .line 208
    :cond_10
    if-lez v19, :cond_15

    const/4 v6, 0x0

    move v4, v9

    move/from16 v16, v10

    :goto_b
    move/from16 v0, v19

    if-ge v6, v0, :cond_12

    .line 214
    move-object/from16 v0, p0

    iget v9, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v10, v9, -0x1

    if-ne v4, v10, :cond_11

    .line 215
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v10, v9, v1, v2}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    :goto_c
    add-int/lit8 v6, v6, 0x1

    const/16 v16, 0x0

    goto :goto_b

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_12
    const/16 v19, 0x0

    move/from16 v20, v15

    move v6, v4

    move/from16 v18, v5

    :goto_d
    if-nez v8, :cond_13

    .line 226
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-eqz v4, :cond_16

    .line 228
    :cond_13
    invoke-virtual/range {v26 .. v26}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v5

    if-eqz v8, :cond_18

    const/4 v4, 0x1

    move v10, v4

    move v11, v5

    :goto_e
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    move v13, v12

    move v5, v7

    :goto_f
    if-ge v4, v11, :cond_1d

    .line 241
    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v7, v7, v4

    .line 242
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v12

    if-eqz v12, :cond_25

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v4, 0x1

    aget-char v12, v12, v4

    invoke-static {v7, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    move v12, v4

    .line 243
    :goto_10
    invoke-static {v7}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v27

    if-lez v27, :cond_14

    .line 245
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v8

    .line 248
    :cond_14
    add-int v4, v16, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v4, v0, :cond_1a

    .line 249
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, -0x1

    if-ne v6, v4, :cond_19

    if-eqz v14, :cond_24

    add-int/lit8 v4, v5, -0x1

    .line 252
    :goto_11
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, p5

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    move v5, v4

    :goto_12
    const/16 v16, 0x0

    move/from16 v17, v5

    :goto_13
    if-gtz v27, :cond_1b

    if-lez v16, :cond_1b

    const/4 v4, 0x1

    .line 261
    :goto_14
    sub-int v5, v16, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    if-lez v27, :cond_1c

    move/from16 v0, v25

    move/from16 v1, v18

    if-ne v0, v1, :cond_23

    move/from16 v0, v20

    if-ne v0, v15, :cond_23

    const/4 v14, 0x1

    move v5, v14

    move/from16 v4, v16

    move/from16 v17, v6

    :goto_15
    add-int v13, v15, v27

    add-int v16, v16, v27

    if-eqz v10, :cond_22

    if-eqz v5, :cond_22

    move/from16 v8, v16

    move v11, v4

    move v12, v5

    move/from16 v7, v17

    :goto_16
    add-int/lit8 v4, v23, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_1f

    .line 275
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-nez v4, :cond_1f

    .line 276
    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v4, v5, -0x1

    if-ne v6, v4, :cond_1e

    if-eqz v12, :cond_21

    add-int/lit8 v4, v7, -0x1

    .line 278
    :goto_17
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v7, v5, v1, v2}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    move v5, v6

    move v7, v4

    :goto_18
    const/4 v4, 0x0

    :goto_19
    move/from16 v6, v18

    move/from16 v8, v19

    move v9, v5

    move v10, v4

    move v13, v12

    move/from16 v15, v20

    move/from16 v16, v21

    goto/16 :goto_a

    :cond_15
    move/from16 v20, v15

    move v6, v9

    move/from16 v16, v10

    move/from16 v18, v5

    .line 215
    goto/16 :goto_d

    .line 226
    :cond_16
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 231
    :goto_1a
    invoke-virtual/range {v26 .. v26}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v8

    if-ge v4, v8, :cond_18

    .line 233
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v8, v8, v4

    const/16 v9, 0x20

    if-eq v8, v9, :cond_17

    add-int/lit8 v5, v4, 0x1

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 228
    :cond_18
    const/4 v4, 0x0

    move v10, v4

    move v11, v5

    goto/16 :goto_e

    .line 252
    :cond_19
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_12

    :cond_1a
    move/from16 v17, v5

    goto/16 :goto_13

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_14

    :cond_1c
    move v7, v13

    .line 261
    :goto_1b
    add-int/lit8 v4, v12, 0x1

    move v13, v7

    move/from16 v5, v17

    goto/16 :goto_f

    :cond_1d
    move/from16 v8, v16

    move v11, v13

    move v12, v14

    move v7, v5

    goto :goto_16

    .line 278
    :cond_1e
    add-int/lit8 v4, v6, 0x1

    move v5, v4

    goto :goto_18

    :cond_1f
    move v4, v8

    move v5, v6

    goto :goto_19

    .line 286
    :cond_20
    const/4 v4, 0x0

    aput v12, p4, v4

    .line 287
    const/4 v4, 0x1

    aput v7, p4, v4

    goto/16 :goto_4

    :cond_21
    move v4, v7

    goto :goto_17

    :cond_22
    move v7, v4

    move v14, v5

    move v15, v13

    goto :goto_1b

    :cond_23
    move v5, v14

    move v4, v13

    goto/16 :goto_15

    :cond_24
    move v4, v5

    goto/16 :goto_11

    :cond_25
    move v12, v4

    goto/16 :goto_10
.end method

.method public scrollDownOneLine(IIJ)V
    .locals 5

    add-int/lit8 v0, p2, -0x1

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 323
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt p2, v1, :cond_2

    .line 327
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    invoke-direct {p0, v1, p1}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 330
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v2, p2

    invoke-direct {p0, v1, v2}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 333
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 335
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iget v3, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 338
    :cond_0
    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 340
    new-instance v2, Lcom/termux/terminal/TerminalRow;

    iget v3, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-direct {v2, v3, p3, p4}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v2, v1, v0

    .line 342
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2, p3, p4}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    goto :goto_0

    .line 324
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "topMargin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenRows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setChar(IIIJ)V
    .locals 2

    .line 390
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-ge p1, v0, :cond_0

    .line 392
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v0

    .line 393
    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    return-void

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "row="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenRows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mColumns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setLineWrap(I)V
    .locals 2

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
    .locals 12

    move/from16 v5, p7

    :goto_0
    move/from16 v0, p9

    if-ge v5, v0, :cond_7

    .line 404
    iget-object v2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, v5}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v3

    aget-object v6, v2, v3

    if-nez p4, :cond_0

    move/from16 v0, p7

    if-ne v5, v0, :cond_2

    :cond_0
    move/from16 v2, p8

    :goto_1
    if-nez p4, :cond_1

    add-int/lit8 v3, v5, 0x1

    move/from16 v0, p9

    if-ne v3, v0, :cond_3

    :cond_1
    move v3, v2

    move/from16 v4, p10

    :goto_2
    if-ge v3, v4, :cond_6

    .line 408
    invoke-virtual {v6, v3}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v8

    .line 409
    invoke-static {v8, v9}, Lcom/termux/terminal/TextStyle;->decodeForeColor(J)I

    move-result v7

    .line 410
    invoke-static {v8, v9}, Lcom/termux/terminal/TextStyle;->decodeBackColor(J)I

    move-result v10

    .line 411
    invoke-static {v8, v9}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v2

    if-eqz p3, :cond_4

    xor-int/lit8 v8, p1, -0x1

    and-int/2addr v8, v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p1

    or-int/2addr v2, v8

    .line 420
    :goto_3
    iget-object v8, v6, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v7, v10, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v10

    aput-wide v10, v8, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    move/from16 v2, p5

    .line 404
    goto :goto_1

    :cond_3
    move v3, v2

    move/from16 v4, p6

    goto :goto_2

    .line 411
    :cond_4
    if-eqz p2, :cond_5

    or-int/2addr v2, p1

    goto :goto_3

    :cond_5
    xor-int/lit8 v8, p1, -0x1

    and-int/2addr v2, v8

    goto :goto_3

    .line 420
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_7
    return-void
.end method
