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
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    int-to-float v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 28
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
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 102
    :cond_0
    iget-short v3, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v0, v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v3, v3, v0

    .line 104
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v0, v0, 0x2

    aget-char v4, v5, v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 105
    :goto_0
    invoke-static {v3}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v3

    if-lez v3, :cond_0

    if-ne v2, p1, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v4

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    add-int/2addr v2, v3

    if-le v2, p1, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public clear(J)V
    .locals 3

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
    .locals 12

    .line 35
    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v7

    .line 36
    invoke-virtual {p1, p3}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v8

    if-lez p2, :cond_3

    .line 37
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p1, v0}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 38
    :goto_0
    iget-object v1, p1, Lcom/termux/terminal/TerminalRow;->mText:[C

    if-ne p0, p1, :cond_0

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    :cond_0
    const/4 v4, 0x0

    move v5, p2

    move/from16 v6, p4

    :goto_1
    if-ge v7, v8, :cond_4

    .line 41
    aget-char v2, v1, v7

    .line 42
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v7, 0x1

    aget-char v7, v1, v3

    invoke-static {v2, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v7, v3

    :cond_1
    if-eqz v0, :cond_2

    const/16 v2, 0x20

    const/4 v0, 0x0

    .line 48
    :cond_2
    invoke-static {v2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v3

    if-lez v3, :cond_5

    add-int/2addr v6, v4

    add-int/2addr v4, v5

    move v5, v4

    .line 54
    :goto_2
    invoke-virtual {p1, v5}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v10

    invoke-virtual {p0, v6, v2, v10, v11}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    add-int/lit8 v7, v7, 0x1

    move v4, v3

    goto :goto_1

    .line 37
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_4
    return-void

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public findStartOfColumn(I)I
    .locals 5

    const/4 v1, 0x0

    .line 64
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v2

    .line 85
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v0, v1

    move v2, v1

    .line 70
    :goto_1
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v3, v3, v2

    .line 71
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    iget-object v4, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v1, v4, v1

    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    add-int/lit8 v1, v2, 0x2

    .line 73
    :cond_2
    invoke-static {v3}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v3

    if-lez v3, :cond_6

    add-int/2addr v0, v3

    if-ne v0, p1, :cond_5

    .line 77
    :goto_2
    iget-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v1, v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget-char v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-static {v0}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v0

    if-gtz v0, :cond_4

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v0, v0, v1

    invoke-static {v0}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v0

    if-gtz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    if-gt v0, p1, :cond_0

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public getSpaceUsed()I
    .locals 1

    .line 59
    iget-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    return v0
.end method

.method public final getStyle(I)J
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method isBlank()Z
    .locals 5

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 224
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v3, v3, v1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setChar(IIJ)V
    .locals 15

    .line 123
    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aput-wide p3, v2, p1

    .line 125
    invoke-static/range {p2 .. p2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v6

    if-gtz v6, :cond_3

    const/4 v2, 0x1

    move v5, v2

    :goto_0
    if-lez p1, :cond_4

    .line 128
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 141
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 142
    invoke-virtual/range {p0 .. p1}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v7

    .line 143
    invoke-static {v3, v7}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v8

    add-int v2, p1, v8

    .line 147
    iget v4, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ge v2, v4, :cond_7

    .line 148
    invoke-virtual {p0, v2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v2

    .line 151
    :goto_3
    sub-int v4, v2, v7

    .line 155
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    if-eqz v5, :cond_1

    add-int/2addr v2, v4

    :cond_1
    add-int v9, v7, v4

    add-int v10, v7, v2

    sub-int v11, v2, v4

    if-lez v11, :cond_9

    .line 170
    iget-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int v12, v2, v9

    .line 171
    add-int/2addr v2, v11

    array-length v13, v3

    if-le v2, v13, :cond_8

    .line 173
    array-length v2, v3

    iget v13, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v2, v13

    new-array v2, v2, [C

    .line 174
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v3, v13, v2, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-static {v3, v9, v2, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iput-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 184
    :goto_4
    iget-short v3, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/2addr v3, v11

    int-to-short v3, v3

    iput-short v3, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-eqz v5, :cond_a

    move v3, v4

    .line 188
    :goto_5
    add-int/2addr v3, v7

    move/from16 v0, p2

    invoke-static {v0, v2, v3}, Ljava/lang/Character;->toChars(I[CI)I

    const/4 v3, 0x2

    if-ne v8, v3, :cond_c

    const/4 v3, 0x1

    if-ne v6, v3, :cond_c

    .line 192
    iget-short v3, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/lit8 v4, v3, 0x1

    array-length v5, v2

    if-le v4, v5, :cond_b

    .line 193
    array-length v3, v2

    iget v4, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v3, v4

    new-array v3, v3, [C

    .line 194
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    add-int/lit8 v4, v10, 0x1

    iget-short v5, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v5, v10

    invoke-static {v2, v10, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iput-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    move-object v2, v3

    .line 200
    :goto_6
    const/16 v3, 0x20

    aput-char v3, v2, v10

    .line 202
    iget-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    .line 205
    :cond_2
    :goto_7
    return-void

    .line 125
    :cond_3
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_0

    .line 128
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    if-eqz v2, :cond_6

    .line 135
    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x20

    move-wide/from16 v0, p3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    :cond_6
    const/4 v2, 0x2

    if-ne v6, v2, :cond_0

    .line 137
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const/16 v3, 0x20

    move-wide/from16 v0, p3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    goto/16 :goto_2

    .line 151
    :cond_7
    iget-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto/16 :goto_3

    .line 178
    :cond_8
    invoke-static {v3, v9, v3, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    goto :goto_4

    :cond_9
    if-gez v11, :cond_10

    .line 182
    iget-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v2, v9

    invoke-static {v3, v9, v3, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    goto :goto_4

    .line 184
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 198
    :cond_b
    add-int/lit8 v4, v10, 0x1

    sub-int/2addr v3, v10

    invoke-static {v2, v10, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 188
    :cond_c
    const/4 v3, 0x1

    if-ne v8, v3, :cond_2

    const/4 v3, 0x2

    if-ne v6, v3, :cond_2

    .line 204
    iget v3, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/lit8 v4, v3, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_f

    add-int/lit8 v3, v3, -0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_d

    int-to-short v2, v10

    .line 208
    iput-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_7

    .line 212
    :cond_d
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v3, v3, v10

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    :goto_8
    add-int/2addr v3, v10

    .line 216
    iget-short v4, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v4, v3

    invoke-static {v2, v3, v2, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v3, v10

    sub-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_7

    .line 212
    :cond_e
    const/4 v3, 0x1

    goto :goto_8

    .line 205
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot put wide character in last column"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    move-object v2, v3

    goto/16 :goto_4
.end method
