.class public final Lcom/termux/terminal/TerminalRow;
.super Ljava/lang/Object;
.source "TerminalRow.java"


# static fields
.field private static final SPARE_CAPACITY_FACTOR:F = 1.5f


# instance fields
.field private final mColumns:I

.field mLineWrap:Z

.field private mSpaceUsed:S

.field final mStyle:[J

.field public mText:[C


# direct methods
.method public constructor <init>(IJ)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    .line 28
    const/high16 v0, 0x3fc00000    # 1.5f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 29
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    return-void
.end method

.method private wideDisplayCharacterStartingAt(I)Z
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 109
    :cond_0
    iget-short v3, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-lt v0, v3, :cond_1

    .line 112
    :goto_0
    return v1

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v3, v3, v0

    .line 104
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v0, v4, 0x1

    aget-char v4, v5, v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 105
    :goto_1
    invoke-static {v3}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v3

    .line 106
    if-lez v3, :cond_0

    .line 107
    if-ne v2, p1, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 104
    goto :goto_1

    .line 108
    :cond_3
    add-int/2addr v2, v3

    .line 109
    if-le v2, p1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public clear(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 117
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 118
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    int-to-short v0, v0

    iput-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    return-void
.end method

.method public copyInterval(Lcom/termux/terminal/TerminalRow;III)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalRow;",
            "III)V"
        }
    .end annotation

    .line 35
    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v7

    .line 36
    invoke-virtual {p1, p3}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v8

    .line 37
    if-lez p2, :cond_0

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p1, v0}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ne p0, p1, :cond_2

    iget-object v0, p1, Lcom/termux/terminal/TerminalRow;->mText:[C

    iget-object v1, p1, Lcom/termux/terminal/TerminalRow;->mText:[C

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 39
    :goto_1
    const/4 v6, 0x0

    move/from16 v3, p4

    move v4, p2

    .line 40
    :goto_2
    if-lt v7, v8, :cond_3

    return-void

    .line 37
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p1, Lcom/termux/terminal/TerminalRow;->mText:[C

    goto :goto_1

    .line 41
    :cond_3
    aget-char v1, v0, v7

    .line 42
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v5, v7, 0x1

    aget-char v7, v0, v5

    invoke-static {v1, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    move v7, v5

    .line 43
    :cond_4
    if-eqz v2, :cond_5

    .line 45
    const/16 v1, 0x20

    .line 46
    const/4 v2, 0x0

    .line 48
    :cond_5
    invoke-static {v1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v5

    .line 49
    if-lez v5, :cond_6

    .line 50
    add-int/2addr v3, v6

    .line 51
    add-int/2addr v4, v6

    .line 54
    :goto_3
    invoke-virtual {p1, v4}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v10

    invoke-virtual {p0, v3, v1, v10, v11}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 40
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3
.end method

.method public findStartOfColumn(I)I
    .registers 8

    const/4 v2, 0x0

    .line 64
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v0

    .line 94
    :cond_0
    return v0

    :cond_1
    move v1, v2

    move v0, v2

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v3, v2, v0

    .line 71
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    .line 72
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v2, v4, 0x1

    aget-char v4, v5, v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 73
    :goto_1
    invoke-static {v3}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v3

    .line 74
    if-lez v3, :cond_5

    .line 75
    add-int/2addr v1, v3

    .line 76
    if-ne v1, p1, :cond_4

    move v0, v2

    .line 77
    :goto_2
    iget-short v1, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v1, v1, v0

    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-static {v1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_2
    move v2, v4

    .line 72
    goto :goto_1

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 92
    :cond_4
    if-gt v1, p1, :cond_0

    :cond_5
    move v0, v2

    .line 97
    goto :goto_0
.end method

.method public getSpaceUsed()I
    .registers 2

    .line 59
    iget-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    return v0
.end method

.method public final getStyle(I)J
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method isBlank()Z
    .registers 6

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 225
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v3, v3, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setChar(IIJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)V"
        }
    .end annotation

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aput-wide p3, v3, p1

    .line 125
    invoke-static/range {p2 .. p2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v7

    .line 126
    if-lez v7, :cond_4

    const/4 v3, 0x0

    move v6, v3

    .line 128
    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v3, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    const/4 v3, 0x0

    .line 130
    :goto_1
    if-eqz v6, :cond_6

    .line 132
    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 141
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 142
    invoke-virtual/range {p0 .. p1}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v8

    .line 143
    invoke-static {v5, v8}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v9

    .line 146
    add-int v3, p1, v9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ge v3, v4, :cond_a

    .line 148
    add-int v3, p1, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v3

    sub-int/2addr v3, v8

    .line 155
    :goto_3
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 156
    if-eqz v6, :cond_2

    .line 161
    add-int/2addr v4, v3

    .line 164
    :cond_2
    add-int v10, v8, v3

    .line 165
    add-int v11, v8, v4

    .line 167
    sub-int v12, v4, v3

    .line 168
    if-lez v12, :cond_c

    .line 170
    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int v13, v4, v10

    .line 171
    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/2addr v4, v12

    array-length v14, v5

    if-le v4, v14, :cond_b

    .line 173
    array-length v4, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v4, v14

    new-array v4, v4, [C

    .line 174
    const/4 v14, 0x0

    const/4 v15, 0x0

    add-int v16, v8, v3

    move/from16 v0, v16

    invoke-static {v5, v14, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-static {v5, v10, v4, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 184
    :goto_4
    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/2addr v5, v12

    int-to-short v5, v5

    move-object/from16 v0, p0

    iput-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    .line 188
    if-eqz v6, :cond_d

    :goto_5
    add-int/2addr v3, v8

    move/from16 v0, p2

    invoke-static {v0, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 190
    const/4 v3, 0x2

    if-ne v9, v3, :cond_f

    const/4 v3, 0x1

    if-ne v7, v3, :cond_f

    .line 192
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/lit8 v3, v3, 0x1

    array-length v5, v4

    if-le v3, v5, :cond_e

    .line 193
    array-length v3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v3, v5

    new-array v3, v3, [C

    .line 194
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    add-int/lit8 v5, v11, 0x1

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v6, v11

    invoke-static {v4, v11, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    move-object v4, v3

    .line 200
    :goto_6
    const/16 v3, 0x20

    aput-char v3, v4, v11

    .line 202
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    .line 217
    :cond_3
    :goto_7
    return-void

    .line 126
    :cond_4
    const/4 v3, 0x1

    move v6, v3

    goto/16 :goto_0

    .line 128
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 135
    :cond_6
    if-eqz v3, :cond_7

    add-int/lit8 v3, p1, -0x1

    const/16 v4, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 137
    :cond_7
    const/4 v3, 0x2

    if-ne v7, v3, :cond_8

    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const/4 v3, 0x0

    .line 138
    :goto_8
    if-eqz v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    const/16 v4, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    goto/16 :goto_2

    .line 137
    :cond_9
    const/4 v3, 0x1

    goto :goto_8

    .line 151
    :cond_a
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v3, v8

    goto/16 :goto_3

    .line 178
    :cond_b
    invoke-static {v5, v10, v5, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    goto/16 :goto_4

    .line 180
    :cond_c
    if-gez v12, :cond_13

    .line 182
    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v4, v10

    invoke-static {v5, v10, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    goto/16 :goto_4

    .line 188
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 198
    :cond_e
    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v5, v11

    invoke-static {v4, v11, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 203
    :cond_f
    const/4 v3, 0x1

    if-ne v9, v3, :cond_3

    const/4 v3, 0x2

    if-ne v7, v3, :cond_3

    .line 204
    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_10

    .line 205
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot put wide character in last column"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/lit8 v3, v3, -0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 208
    int-to-short v3, v11

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto/16 :goto_7

    .line 212
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v3, v3, v11

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x2

    :goto_9
    add-int/2addr v3, v11

    .line 213
    move-object/from16 v0, p0

    iget-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v5, v3

    invoke-static {v4, v3, v4, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v3, v11

    sub-int v3, v4, v3

    int-to-short v3, v3

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto/16 :goto_7

    .line 212
    :cond_12
    const/4 v3, 0x1

    goto :goto_9

    :cond_13
    move-object v4, v5

    goto/16 :goto_4
.end method
