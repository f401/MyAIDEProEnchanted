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

    int-to-float v0, p1

    const/high16 v1, 0x3fc00000  # 1.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 28
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 29
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    return-void
.end method

.method private wideDisplayCharacterStartingAt(I)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 102
    :cond_3
    iget-short v3, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v1, v3, :cond_2f

    .line 103
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v1, 0x1

    aget-char v3, v3, v1

    .line 104
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v1, v1, 0x2

    aget-char v4, v5, v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_1f

    :cond_1e
    move v1, v4

    .line 105
    :goto_1f
    invoke-static {v3}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v3

    if-lez v3, :cond_3

    if-ne v2, p1, :cond_2c

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    const/4 p1, 0x1

    return p1

    :cond_2c
    add-int/2addr v2, v3

    if-le v2, p1, :cond_3

    :cond_2f
    return v0
.end method


# virtual methods
.method public clear(J)V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 117
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 118
    iget p1, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    int-to-short p1, p1

    iput-short p1, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    return-void
.end method

.method public copyInterval(Lcom/termux/terminal/TerminalRow;III)V
    .registers 14

    .line 35
    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v0

    .line 36
    invoke-virtual {p1, p3}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p2, :cond_16

    .line 37
    add-int/lit8 v3, p2, -0x1

    invoke-direct {p1, v3}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    .line 38
    :goto_17
    iget-object v4, p1, Lcom/termux/terminal/TerminalRow;->mText:[C

    if-ne p0, p1, :cond_20

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v4

    :cond_20
    const/4 v5, 0x0

    :goto_21
    if-ge v0, p3, :cond_4a

    .line 41
    aget-char v6, v4, v0

    .line 42
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_33

    add-int/lit8 v0, v0, 0x1

    aget-char v7, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    :cond_33
    if-eqz v3, :cond_38

    const/16 v6, 0x20

    const/4 v3, 0x0

    .line 48
    :cond_38
    invoke-static {v6}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v7

    if-lez v7, :cond_41

    add-int/2addr p4, v5

    add-int/2addr p2, v5

    move v5, v7

    .line 54
    :cond_41
    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v7

    invoke-virtual {p0, p4, v6, v7, v8}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    add-int/2addr v0, v2

    goto :goto_21

    :cond_4a
    return-void
.end method

.method public findStartOfColumn(I)I
    .registers 7

    .line 64
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    :goto_b
    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v0

    .line 71
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 72
    iget-object v4, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v3, v4, v3

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    .line 73
    :cond_21
    invoke-static {v2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v2

    if-lez v2, :cond_5e

    add-int/2addr v1, v2

    if-ne v1, p1, :cond_5b

    .line 77
    :goto_2a
    iget-short p1, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v3, p1, :cond_5a

    .line 79
    iget-object p1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char p1, p1, v3

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 80
    iget-object p1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v0, p1, v3

    add-int/lit8 v1, v3, 0x1

    aget-char p1, p1, v1

    invoke-static {v0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    invoke-static {p1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result p1

    if-gtz p1, :cond_5a

    add-int/lit8 v3, v3, 0x2

    goto :goto_2a

    .line 85
    :cond_4d
    iget-object p1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char p1, p1, v3

    invoke-static {p1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result p1

    if-gtz p1, :cond_5a

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_5a
    return v3

    :cond_5b
    if-le v1, p1, :cond_5e

    return v0

    :cond_5e
    move v0, v3

    goto :goto_b
.end method

.method public getSpaceUsed()I
    .registers 2

    .line 59
    iget-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    return v0
.end method

.method public final getStyle(I)J
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method isBlank()Z
    .registers 6

    .line 223
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_14

    .line 224
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v3, v3, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_11

    return v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public setChar(IIJ)V
    .registers 21

    .line 123
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    iget-object v3, v0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aput-wide v1, v3, p1

    .line 125
    invoke-static/range {p2 .. p2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v3

    const/4 v4, 0x0

    if-gtz v3, :cond_11

    const/4 v6, 0x1

    goto :goto_12

    :cond_11
    const/4 v6, 0x0

    :goto_12
    if-lez p1, :cond_1e

    .line 128
    add-int/lit8 v7, p1, -0x1

    invoke-direct {v0, v7}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    :goto_1f
    const/16 v8, 0x20

    const/4 v9, 0x2

    if-eqz v6, :cond_29

    if-eqz v7, :cond_3d

    add-int/lit8 v1, p1, -0x1

    goto :goto_3f

    :cond_29
    if-eqz v7, :cond_30

    .line 135
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    :cond_30
    if-ne v3, v9, :cond_3d

    .line 137
    add-int/lit8 v7, p1, 0x1

    invoke-direct {v0, v7}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 138
    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 141
    :cond_3d
    move/from16 v1, p1

    :goto_3f
    iget-object v2, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 142
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v7

    .line 143
    invoke-static {v2, v7}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v10

    add-int v11, v1, v10

    .line 147
    iget v12, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ge v11, v12, :cond_54

    .line 148
    invoke-virtual {v0, v11}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v11

    goto :goto_56

    .line 151
    :cond_54
    iget-short v11, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    :goto_56
    sub-int/2addr v11, v7

    .line 155
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    if-eqz v6, :cond_5e

    add-int/2addr v12, v11

    :cond_5e
    add-int v13, v7, v11

    add-int v14, v7, v12

    sub-int/2addr v12, v11

    if-lez v12, :cond_81

    .line 170
    iget-short v15, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int v8, v15, v13

    .line 171
    add-int/2addr v15, v12

    array-length v5, v2

    if-le v15, v5, :cond_7d

    .line 173
    array-length v5, v2

    iget v15, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v5, v15

    new-array v5, v5, [C

    .line 174
    invoke-static {v2, v4, v5, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-static {v2, v13, v5, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iput-object v5, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    move-object v2, v5

    goto :goto_89

    .line 178
    :cond_7d
    invoke-static {v2, v13, v2, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_89

    :cond_81
    if-gez v12, :cond_89

    .line 182
    iget-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v5, v13

    invoke-static {v2, v13, v2, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    :cond_89
    :goto_89
    iget-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/2addr v5, v12

    int-to-short v5, v5

    iput-short v5, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-eqz v6, :cond_92

    goto :goto_93

    :cond_92
    const/4 v11, 0x0

    .line 188
    :goto_93
    add-int/2addr v7, v11

    move/from16 v5, p2

    invoke-static {v5, v2, v7}, Ljava/lang/Character;->toChars(I[CI)I

    if-ne v10, v9, :cond_cc

    const/4 v5, 0x1

    if-ne v3, v5, :cond_cc

    .line 192
    iget-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/lit8 v3, v1, 0x1

    array-length v5, v2

    if-le v3, v5, :cond_ba

    .line 193
    array-length v1, v2

    iget v3, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v1, v3

    new-array v1, v1, [C

    .line 194
    invoke-static {v2, v4, v1, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    add-int/lit8 v3, v14, 0x1

    iget-short v4, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v4, v14

    invoke-static {v2, v14, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iput-object v1, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    move-object v2, v1

    goto :goto_c0

    .line 198
    :cond_ba
    add-int/lit8 v3, v14, 0x1

    sub-int/2addr v1, v14

    invoke-static {v2, v14, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    :goto_c0
    const/16 v1, 0x20

    aput-char v1, v2, v14

    .line 202
    iget-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    const/4 v4, 0x1

    add-int/2addr v1, v4

    int-to-short v1, v1

    iput-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_102

    .line 188
    :cond_cc
    const/4 v4, 0x1

    .line 202
    if-ne v10, v4, :cond_102

    if-ne v3, v9, :cond_102

    .line 204
    iget v3, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/lit8 v5, v3, -0x1

    if-eq v1, v5, :cond_fa

    sub-int/2addr v3, v9

    if-ne v1, v3, :cond_de

    int-to-short v1, v14

    .line 208
    iput-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_102

    .line 212
    :cond_de
    iget-object v1, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v1, v1, v14

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_ea

    const/4 v5, 0x2

    goto :goto_eb

    :cond_ea
    const/4 v5, 0x1

    :goto_eb
    add-int/2addr v5, v14

    .line 216
    iget-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v1, v5

    invoke-static {v2, v5, v2, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v5, v14

    sub-int/2addr v1, v5

    int-to-short v1, v1

    iput-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_102

    .line 205
    :cond_fa
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot put wide character in last column"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_102
    :goto_102
    return-void
.end method
