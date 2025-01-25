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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 19
    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 30
    iput p1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 31
    iput p2, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 32
    iput p3, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 33
    new-array p2, p2, [Lcom/termux/terminal/TerminalRow;

    iput-object p2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    .line 35
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x20

    sget-wide v6, Lcom/termux/terminal/TextStyle;->NORMAL:J

    move-object v0, p0

    move v3, p1

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    return-void
.end method

.method private blockCopyLinesDown(II)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    .line 303
    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    add-int/lit8 p2, p2, -0x1

    .line 307
    iget-object v1, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v0

    aget-object v1, v1, v2

    :goto_10
    if-ltz p2, :cond_21

    .line 310
    iget-object v2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v3, p1, p2

    add-int/lit8 v4, v3, 0x1

    rem-int/2addr v4, v0

    rem-int/2addr v3, v0

    aget-object v3, v2, v3

    aput-object v3, v2, v4

    add-int/lit8 p2, p2, -0x1

    goto :goto_10

    .line 312
    :cond_21
    iget-object p2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    rem-int/2addr p1, v0

    aput-object v1, p2, p1

    return-void
.end method


# virtual methods
.method public allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;
    .registers 7

    .line 386
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v1, v0, p1

    if-nez v1, :cond_11

    new-instance v1, Lcom/termux/terminal/TerminalRow;

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v1, v0, p1

    :cond_11
    return-object v1
.end method

.method public blockCopy(IIIIII)V
    .registers 11

    if-nez p3, :cond_3

    return-void

    :cond_3
    if-ltz p1, :cond_48

    add-int v0, p1, p3

    .line 360
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v0, v1, :cond_48

    if-ltz p2, :cond_48

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int v3, p2, p4

    if-gt v3, v2, :cond_48

    if-ltz p5, :cond_48

    add-int/2addr p3, p5

    if-gt p3, v1, :cond_48

    if-ltz p6, :cond_48

    add-int p3, p6, p4

    if-gt p3, v2, :cond_48

    const/4 p3, 0x0

    if-le p2, p6, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-ge p3, p4, :cond_47

    if-eqz v1, :cond_2a

    move v2, p3

    goto :goto_2e

    :cond_2a
    add-int/lit8 v2, p3, 0x1

    sub-int v2, p4, v2

    .line 365
    :goto_2e
    add-int v3, p2, v2

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v3

    .line 366
    add-int/2addr v2, p6

    invoke-virtual {p0, v2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v2

    invoke-virtual {v2, v3, p1, v0, p5}, Lcom/termux/terminal/TerminalRow;->copyInterval(Lcom/termux/terminal/TerminalRow;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_24

    :cond_47
    return-void

    .line 361
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_4f

    :goto_4e
    throw p1

    :goto_4f
    goto :goto_4e
.end method

.method public blockSet(IIIIIJ)V
    .registers 22

    move-object v6, p0

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    if-ltz v7, :cond_32

    .line 376
    add-int v0, v7, v9

    iget v1, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v0, v1, :cond_32

    if-ltz v8, :cond_32

    add-int v0, v8, v10

    iget v1, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt v0, v1, :cond_32

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1a
    if-ge v12, v10, :cond_31

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v9, :cond_2e

    .line 382
    add-int v1, v7, v13

    add-int v2, v8, v12

    move-object v0, p0

    move/from16 v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_2e
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    :cond_31
    return-void

    .line 377
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal arguments! blockSet("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_78

    :goto_77
    throw v1

    :goto_78
    goto :goto_77
.end method

.method public clearLineWrap(I)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return-void
.end method

.method public externalToInternalRow(I)I
    .registers 4

    .line 115
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_15

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt p1, v0, :cond_15

    .line 117
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v0, p1

    .line 118
    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gez v0, :cond_12

    add-int/2addr p1, v0

    goto :goto_14

    :cond_12
    rem-int p1, v0, p1

    :goto_14
    return p1

    .line 116
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extRow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenRows="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mActiveTranscriptRows="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return p1
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .registers 20

    .line 43
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget v2, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 46
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v3, v3

    move/from16 v4, p2

    if-ge v4, v3, :cond_17

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v3, v3

    goto :goto_18

    :cond_17
    move v3, v4

    .line 47
    :goto_18
    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move/from16 v5, p4

    if-lt v5, v4, :cond_21

    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    :cond_21
    move v4, v5

    :goto_22
    move v5, v3

    :goto_23
    if-gt v5, v4, :cond_8a

    if-ne v5, v3, :cond_2a

    move/from16 v6, p1

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    :goto_2b
    if-ne v5, v4, :cond_31

    add-int/lit8 v7, p3, 0x1

    if-le v7, v2, :cond_32

    :cond_31
    move v7, v2

    .line 58
    :cond_32
    iget-object v8, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, v5}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v9

    aget-object v8, v8, v9

    .line 59
    invoke-virtual {v8, v6}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v6

    .line 60
    iget v9, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-ge v7, v9, :cond_47

    invoke-virtual {v8, v7}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v9

    goto :goto_4b

    :cond_47
    invoke-virtual {v8}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v9

    :goto_4b
    if-ne v9, v6, :cond_53

    .line 63
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v9

    .line 65
    :cond_53
    iget-object v8, v8, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 68
    invoke-virtual {p0, v5}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_61

    if-ne v7, v2, :cond_61

    add-int/lit8 v9, v9, -0x1

    goto :goto_70

    :cond_61
    move v12, v6

    const/4 v7, -0x1

    :goto_63
    if-ge v12, v9, :cond_6f

    .line 74
    aget-char v13, v8, v12

    const/16 v14, 0x20

    if-eq v13, v14, :cond_6c

    move v7, v12

    :cond_6c
    add-int/lit8 v12, v12, 0x1

    goto :goto_63

    :cond_6f
    move v9, v7

    :goto_70
    if-eq v9, v11, :cond_78

    .line 79
    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v8, v6, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_78
    if-nez v10, :cond_87

    if-ge v5, v4, :cond_87

    .line 80
    iget v6, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_87

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 82
    :cond_8a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStyleAt(II)J
    .registers 3

    .line 397
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTranscriptText()Ljava/lang/String;
    .registers 5

    .line 39
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resize(III[IJZ)V
    .registers 39

    .line 143
    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v7, p5

    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v3, :cond_88

    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gt v1, v3, :cond_88

    .line 145
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int v3, v0, v1

    if-lez v3, :cond_3c

    if-ge v3, v0, :cond_3c

    sub-int/2addr v0, v9

    :goto_1d
    if-lez v0, :cond_60

    .line 149
    aget v4, p4, v9

    if-lt v4, v0, :cond_24

    goto :goto_60

    .line 150
    :cond_24
    invoke-virtual {v6, v0}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v4

    .line 151
    iget-object v5, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v4, v5, v4

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_34
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_39

    :cond_38
    goto :goto_60

    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_3c
    if-gez v3, :cond_38

    .line 157
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v3, v0, :cond_60

    const/4 v4, 0x0

    :goto_48
    sub-int v5, v0, v3

    if-ge v4, v5, :cond_5f

    .line 161
    iget v5, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iget v11, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/2addr v5, v11

    add-int/2addr v5, v4

    iget v11, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    rem-int/2addr v5, v11

    invoke-virtual {v6, v5}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_5f
    move v3, v0

    .line 165
    :cond_60
    :goto_60
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v0, v3

    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 166
    iget v4, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gez v0, :cond_6b

    add-int/2addr v0, v4

    goto :goto_6c

    :cond_6b
    rem-int/2addr v0, v4

    :goto_6c
    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 167
    iput v2, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-eqz p7, :cond_74

    const/4 v0, 0x0

    goto :goto_7b

    .line 168
    :cond_74
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    add-int/2addr v0, v3

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_7b
    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 169
    aget v0, p4, v9

    sub-int/2addr v0, v3

    aput v0, p4, v9

    .line 170
    iput v1, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_23b

    .line 173
    :cond_88
    iget-object v11, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    .line 174
    new-array v3, v2, [Lcom/termux/terminal/TerminalRow;

    iput-object v3, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    const/4 v3, 0x0

    :goto_8f
    if-ge v3, v2, :cond_9d

    .line 176
    iget-object v4, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    new-instance v5, Lcom/termux/terminal/TerminalRow;

    invoke-direct {v5, v0, v7, v8}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .line 178
    :cond_9d
    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 179
    iget v12, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 180
    iget v13, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 181
    iget v14, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 182
    iput v2, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 183
    iput v1, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 184
    iput v10, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iput v10, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 185
    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 189
    aget v15, p4, v9

    .line 190
    aget v4, p4, v10

    neg-int v0, v3

    const/4 v1, -0x1

    move v5, v0

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_bd
    if-ge v5, v13, :cond_235

    add-int v18, v12, v5

    if-gez v18, :cond_c6

    add-int v18, v14, v18

    goto :goto_c8

    .line 203
    :cond_c6
    rem-int v18, v18, v14

    .line 205
    :goto_c8
    aget-object v9, v11, v18

    if-ne v5, v15, :cond_cf

    const/16 v18, 0x1

    goto :goto_d1

    :cond_cf
    const/16 v18, 0x0

    :goto_d1
    if-eqz v9, :cond_21e

    if-nez v2, :cond_d7

    if-nez v18, :cond_e7

    .line 208
    :cond_d7
    invoke-virtual {v9}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v19

    if-eqz v19, :cond_e7

    move/from16 p1, v2

    move-object/from16 v27, v11

    move/from16 v28, v12

    move v11, v4

    move v12, v5

    goto/16 :goto_226

    :cond_e7
    if-lez v3, :cond_112

    move/from16 p1, v2

    move/from16 v10, v16

    const/4 v2, 0x0

    :goto_ee
    if-ge v2, v3, :cond_10a

    .line 214
    move/from16 p2, v4

    iget v4, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move/from16 p3, v5

    add-int/lit8 v5, v4, -0x1

    if-ne v10, v5, :cond_ff

    .line 215
    const/4 v5, 0x0

    invoke-virtual {v6, v5, v4, v7, v8}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_101

    :cond_ff
    add-int/lit8 v10, v10, 0x1

    :goto_101
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p2

    move/from16 v5, p3

    const/16 v17, 0x0

    goto :goto_ee

    :cond_10a
    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 v16, v10

    const/4 v10, 0x0

    goto :goto_119

    :cond_112
    move/from16 p1, v2

    move/from16 p2, v4

    move/from16 p3, v5

    move v10, v3

    :goto_119
    if-nez v18, :cond_135

    .line 226
    iget-boolean v2, v9, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-eqz v2, :cond_120

    goto :goto_135

    :cond_120
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 231
    :goto_122
    invoke-virtual {v9}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v4

    if-ge v3, v4, :cond_13f

    .line 233
    iget-object v4, v9, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v4, v4, v3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_132

    add-int/lit8 v2, v3, 0x1

    :cond_132
    add-int/lit8 v3, v3, 0x1

    goto :goto_122

    .line 228
    :cond_135
    :goto_135
    invoke-virtual {v9}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v2

    if-eqz v18, :cond_13f

    move v4, v2

    const/16 v18, 0x1

    goto :goto_142

    :cond_13f
    move v4, v2

    const/16 v18, 0x0

    :goto_142
    const-wide/16 v2, 0x0

    move/from16 p7, v10

    move/from16 v20, v17

    const/4 v5, 0x0

    const/4 v10, 0x0

    move/from16 v17, p1

    move/from16 v30, v16

    move/from16 v16, v1

    move/from16 v1, v30

    :goto_152
    if-ge v5, v4, :cond_1ed

    .line 241
    move-wide/from16 v21, v2

    iget-object v2, v9, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v2, v2, v5

    .line 242
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_16a

    iget-object v3, v9, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v5, v5, 0x1

    aget-char v3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    :cond_16a
    move v3, v2

    move/from16 v23, v5

    .line 243
    invoke-static {v3}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v24

    if-lez v24, :cond_177

    .line 245
    invoke-virtual {v9, v10}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v21

    .line 248
    :cond_177
    add-int v2, v20, v24

    iget v5, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-le v2, v5, :cond_198

    .line 249
    invoke-virtual {v6, v1}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 250
    iget v2, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v5, v2, -0x1

    if-ne v1, v5, :cond_18f

    if-eqz v17, :cond_18a

    add-int/lit8 v0, v0, -0x1

    .line 252
    :cond_18a
    const/4 v5, 0x0

    invoke-virtual {v6, v5, v2, v7, v8}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_191

    :cond_18f
    add-int/lit8 v1, v1, 0x1

    :goto_191
    move/from16 v20, v0

    move/from16 v25, v1

    const/16 v26, 0x0

    goto :goto_19e

    :cond_198
    move/from16 v25, v1

    move/from16 v26, v20

    move/from16 v20, v0

    :goto_19e
    if-gtz v24, :cond_1a4

    if-lez v26, :cond_1a4

    const/4 v0, 0x1

    goto :goto_1a5

    :cond_1a4
    const/4 v0, 0x0

    .line 261
    :goto_1a5
    sub-int v1, v26, v0

    move-object/from16 v0, p0

    move/from16 v2, v25

    move/from16 v29, v4

    move-object/from16 v27, v11

    move/from16 v28, v12

    move/from16 v11, p2

    move/from16 v12, p3

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    if-lez v24, :cond_1d6

    if-ne v15, v12, :cond_1c7

    if-ne v11, v10, :cond_1c7

    move/from16 v0, v25

    move/from16 v16, v26

    const/16 v17, 0x1

    goto :goto_1c9

    :cond_1c7
    move/from16 v0, v20

    :goto_1c9
    add-int v10, v10, v24

    add-int v20, v26, v24

    if-eqz v18, :cond_1da

    if-eqz v17, :cond_1da

    move/from16 v2, v17

    move/from16 v1, v25

    goto :goto_1f7

    :cond_1d6
    move/from16 v0, v20

    move/from16 v20, v26

    :cond_1da
    const/4 v1, 0x1

    add-int/lit8 v5, v23, 0x1

    move/from16 p2, v11

    move/from16 p3, v12

    move-wide/from16 v2, v21

    move/from16 v1, v25

    move-object/from16 v11, v27

    move/from16 v12, v28

    move/from16 v4, v29

    goto/16 :goto_152

    :cond_1ed
    move-object/from16 v27, v11

    move/from16 v28, v12

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v2, v17

    :goto_1f7
    add-int/lit8 v3, v13, -0x1

    if-eq v12, v3, :cond_213

    .line 275
    iget-boolean v3, v9, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-nez v3, :cond_213

    .line 276
    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_20e

    if-eqz v2, :cond_209

    add-int/lit8 v0, v0, -0x1

    .line 278
    :cond_209
    const/4 v4, 0x0

    invoke-virtual {v6, v4, v3, v7, v8}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_210

    :cond_20e
    add-int/lit8 v1, v1, 0x1

    :goto_210
    const/16 v17, 0x0

    goto :goto_215

    :cond_213
    move/from16 v17, v20

    :goto_215
    move/from16 v3, p7

    move/from16 v30, v16

    move/from16 v16, v1

    move/from16 v1, v30

    goto :goto_22a

    .line 205
    :cond_21e
    move/from16 p1, v2

    move-object/from16 v27, v11

    move/from16 v28, v12

    move v11, v4

    move v12, v5

    .line 278
    :goto_226
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p1

    :goto_22a
    add-int/lit8 v5, v12, 0x1

    move v4, v11

    move-object/from16 v11, v27

    move/from16 v12, v28

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_bd

    .line 286
    :cond_235
    const/4 v2, 0x0

    aput v1, p4, v2

    .line 287
    const/4 v1, 0x1

    aput v0, p4, v1

    .line 291
    :goto_23b
    aget v0, p4, v2

    if-ltz v0, :cond_243

    aget v0, p4, v1

    if-gez v0, :cond_248

    :cond_243
    const/4 v0, 0x0

    aput v0, p4, v1

    aput v0, p4, v0

    :cond_248
    return-void
.end method

.method public scrollDownOneLine(IIJ)V
    .registers 7

    add-int/lit8 v0, p2, -0x1

    if-gt p1, v0, :cond_45

    if-ltz p1, :cond_45

    .line 323
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt p2, v1, :cond_45

    .line 327
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    invoke-direct {p0, v1, p1}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 330
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v1, p2

    invoke-direct {p0, p1, v1}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 333
    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iget p2, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 335
    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_2d

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 338
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    .line 339
    iget-object p2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v0, p2, p1

    if-nez v0, :cond_41

    .line 340
    new-instance v0, Lcom/termux/terminal/TerminalRow;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-direct {v0, v1, p3, p4}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v0, p2, p1

    goto :goto_44

    .line 342
    :cond_41
    invoke-virtual {v0, p3, p4}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    :goto_44
    return-void

    .line 324
    :cond_45
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "topMargin="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bottomMargin="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenRows="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChar(IIIJ)V
    .registers 7

    .line 390
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-ge p2, v0, :cond_14

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-ge p1, v0, :cond_14

    .line 392
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p2

    .line 393
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    return-void

    .line 391
    :cond_14
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "row="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", column="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenRows="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mColumns="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineWrap(I)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return-void
.end method

.method public setOrClearEffect(IZZZIIIIII)V
    .registers 23

    move-object v0, p0

    move/from16 v1, p9

    move/from16 v2, p7

    :goto_5
    if-ge v2, v1, :cond_5a

    .line 404
    iget-object v3, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, v2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v4

    aget-object v3, v3, v4

    if-nez p4, :cond_19

    move/from16 v4, p7

    if-ne v2, v4, :cond_16

    goto :goto_1b

    :cond_16
    move/from16 v5, p5

    goto :goto_1d

    :cond_19
    move/from16 v4, p7

    :goto_1b
    move/from16 v5, p8

    :goto_1d
    if-nez p4, :cond_27

    add-int/lit8 v6, v2, 0x1

    if-ne v6, v1, :cond_24

    goto :goto_27

    :cond_24
    move/from16 v6, p6

    goto :goto_29

    :cond_27
    :goto_27
    move/from16 v6, p10

    :goto_29
    if-ge v5, v6, :cond_57

    .line 408
    invoke-virtual {v3, v5}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v7

    .line 409
    invoke-static {v7, v8}, Lcom/termux/terminal/TextStyle;->decodeForeColor(J)I

    move-result v9

    .line 410
    invoke-static {v7, v8}, Lcom/termux/terminal/TextStyle;->decodeBackColor(J)I

    move-result v10

    .line 411
    invoke-static {v7, v8}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v7

    if-eqz p3, :cond_45

    xor-int/lit8 v8, v7, -0x1

    and-int/2addr v8, p1

    xor-int/lit8 v11, p1, -0x1

    and-int/2addr v7, v11

    or-int/2addr v7, v8

    goto :goto_4c

    :cond_45
    if-eqz p2, :cond_49

    or-int/2addr v7, p1

    goto :goto_4c

    :cond_49
    xor-int/lit8 v8, p1, -0x1

    and-int/2addr v7, v8

    .line 420
    :goto_4c
    iget-object v8, v3, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v9, v10, v7}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v9

    aput-wide v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5a
    return-void
.end method
