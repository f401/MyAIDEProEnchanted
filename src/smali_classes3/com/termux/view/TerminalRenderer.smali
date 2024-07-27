.class final Lcom/termux/view/TerminalRenderer;
.super Ljava/lang/Object;
.source "TerminalRenderer.java"


# instance fields
.field private final asciiMeasures:[F

.field private final mFontAscent:I

.field final mFontLineSpacing:I

.field final mFontLineSpacingAndAscent:I

.field final mFontWidth:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field final mTextSize:I

.field final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(ILandroid/graphics/Typeface;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/16 v0, 0x7f

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    .line 37
    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    .line 38
    iput-object p2, p0, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    .line 40
    iget-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    iget-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    .line 45
    iget-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    .line 46
    iget v0, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    iget v2, p0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    .line 47
    iget-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    const-string v2, "X"

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    array-length v3, v3

    if-lt v0, v3, :cond_0

    return-void

    .line 51
    :cond_0
    int-to-char v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 52
    iget-object v3, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    iget-object v4, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    aput v4, v3, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "[C[IFIIIIFIIJZ)V"
        }
    .end annotation

    .line 151
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeForeColor(J)I

    move-result v2

    .line 152
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v15

    .line 153
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeBackColor(J)I

    move-result v4

    .line 154
    and-int/lit8 v3, v15, 0x9

    if-nez v3, :cond_8

    const/4 v3, 0x0

    move v14, v3

    .line 155
    :goto_0
    and-int/lit8 v3, v15, 0x4

    if-nez v3, :cond_9

    const/4 v3, 0x0

    move v13, v3

    .line 156
    :goto_1
    and-int/lit8 v3, v15, 0x2

    if-nez v3, :cond_a

    const/4 v3, 0x0

    move v12, v3

    .line 157
    :goto_2
    and-int/lit8 v3, v15, 0x40

    if-nez v3, :cond_b

    const/4 v3, 0x0

    move v10, v3

    .line 158
    :goto_3
    and-int/lit16 v3, v15, 0x100

    if-nez v3, :cond_c

    const/4 v3, 0x0

    move v9, v3

    .line 160
    :goto_4
    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    const/high16 v5, -0x1000000

    if-eq v3, v5, :cond_12

    .line 162
    if-eqz v14, :cond_0

    if-ltz v2, :cond_0

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x8

    .line 163
    :cond_0
    aget v3, p3, v2

    .line 166
    :goto_5
    const/high16 v2, -0x1000000

    and-int/2addr v2, v4

    const/high16 v5, -0x1000000

    if-eq v2, v5, :cond_1

    .line 167
    aget v4, p3, v4

    .line 171
    :cond_1
    and-int/lit8 v2, v15, 0x10

    if-nez v2, :cond_d

    const/4 v2, 0x0

    .line 172
    :goto_6
    xor-int v2, v2, p14

    if-eqz v2, :cond_11

    move v2, v3

    move v8, v4

    .line 178
    :goto_7
    move/from16 v0, p5

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v3, v4

    .line 179
    move/from16 v0, p6

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v4, v5

    add-float v5, v3, v4

    .line 181
    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float v4, p9, v4

    .line 182
    move/from16 v0, p6

    int-to-float v6, v0

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v6, v16

    if-lez v6, :cond_10

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    move/from16 v0, p6

    int-to-float v6, v0

    div-float/2addr v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 186
    move/from16 v0, p6

    int-to-float v6, v0

    div-float v6, v4, v6

    mul-float/2addr v3, v6

    .line 187
    move/from16 v0, p6

    int-to-float v6, v0

    div-float/2addr v4, v6

    mul-float/2addr v5, v4

    .line 188
    const/4 v4, 0x1

    move v11, v4

    .line 191
    :goto_8
    const/16 v4, 0x101

    aget v4, p3, v4

    if-eq v2, v4, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    int-to-float v4, v4

    sub-float v2, p4, v2

    add-float/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    :cond_2
    if-eqz p10, :cond_4

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 200
    const/4 v4, 0x1

    move/from16 v0, p11

    if-ne v0, v4, :cond_e

    float-to-double v6, v2

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v6, v6, v16

    double-to-float v2, v6

    .line 202
    :cond_3
    :goto_9
    sub-float v4, p4, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 205
    :cond_4
    and-int/lit8 v2, v15, 0x20

    if-nez v2, :cond_6

    .line 206
    if-eqz v9, :cond_5

    .line 207
    shr-int/lit8 v2, v8, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 213
    shr-int/lit8 v4, v8, 0x8

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    .line 214
    and-int/lit16 v5, v8, 0xff

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    .line 215
    shl-int/lit8 v2, v2, 0x10

    const/high16 v6, 0x1000000

    sub-int/2addr v2, v6

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    add-int v8, v2, v5

    .line 218
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_f

    const v2, -0x414ccccd    # -0.35f

    :goto_a
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v2, v2

    sub-float v9, p4, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p7

    move/from16 v7, p8

    move v8, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 228
    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void

    .line 154
    :cond_8
    const/4 v3, 0x1

    move v14, v3

    goto/16 :goto_0

    .line 155
    :cond_9
    const/4 v3, 0x1

    move v13, v3

    goto/16 :goto_1

    .line 156
    :cond_a
    const/4 v3, 0x1

    move v12, v3

    goto/16 :goto_2

    .line 157
    :cond_b
    const/4 v3, 0x1

    move v10, v3

    goto/16 :goto_3

    .line 158
    :cond_c
    const/4 v3, 0x1

    move v9, v3

    goto/16 :goto_4

    .line 171
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 201
    :cond_e
    const/4 v4, 0x2

    move/from16 v0, p11

    if-ne v0, v4, :cond_3

    float-to-double v6, v5

    sub-float v4, v5, v3

    const/4 v5, 0x3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v4, v4, v16

    sub-double v4, v6, v4

    double-to-float v5, v4

    goto/16 :goto_9

    .line 220
    :cond_f
    const/4 v2, 0x0

    goto :goto_a

    :cond_10
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_8

    :cond_11
    move v2, v4

    move v8, v3

    goto/16 :goto_7

    :cond_12
    move v3, v2

    goto/16 :goto_5
.end method


# virtual methods
.method public final render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V
    .registers 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalEmulator;",
            "Landroid/graphics/Canvas;",
            "IIIII)V"
        }
    .end annotation

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->isReverseVideo()Z

    move-result v16

    .line 60
    move-object/from16 v0, p1

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    move/from16 v30, v0

    .line 61
    move-object/from16 v0, p1

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    move/from16 v31, v0

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorCol()I

    move-result v28

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorRow()I

    move-result v32

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->isShowingCursor()Z

    move-result v33

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v34

    .line 66
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v5, v2, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorStyle()I

    move-result v13

    .line 69
    if-eqz v16, :cond_0

    .line 70
    const/16 v2, 0x100

    aget v2, v5, v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v6, v2

    move/from16 v29, p3

    .line 73
    :goto_0
    add-int v2, p3, v30

    move/from16 v0, v29

    if-lt v0, v2, :cond_1

    return-void

    .line 74
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    add-float/2addr v6, v2

    .line 76
    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    if-eqz v33, :cond_3

    move/from16 v27, v28

    .line 77
    :goto_1
    const/4 v3, -0x1

    .line 78
    move/from16 v0, v29

    move/from16 v1, p4

    if-lt v0, v1, :cond_16

    move/from16 v0, v29

    move/from16 v1, p5

    if-gt v0, v1, :cond_16

    .line 79
    move/from16 v0, v29

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    move/from16 v3, p6

    .line 80
    :cond_2
    move/from16 v0, v29

    move/from16 v1, p5

    if-ne v0, v1, :cond_4

    move/from16 v2, p7

    :goto_2
    move/from16 v24, v3

    move/from16 v25, v2

    .line 83
    :goto_3
    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v35

    .line 84
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 85
    invoke-virtual/range {v35 .. v35}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v36

    .line 87
    const/4 v2, 0x0

    int-to-long v14, v2

    .line 88
    const/4 v7, -0x1

    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v11, 0x0

    .line 95
    const/16 v19, 0x0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 133
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v31

    if-lt v0, v1, :cond_5

    .line 140
    if-eqz v10, :cond_14

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v2, v2, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    const/16 v3, 0x102

    aget v12, v2, v3

    .line 143
    :goto_5
    sub-int v8, v31, v7

    sub-int v10, v22, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v16}, Lcom/termux/view/TerminalRenderer;->drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V

    .line 73
    add-int/lit8 v2, v29, 0x1

    move/from16 v29, v2

    goto :goto_0

    .line 76
    :cond_3
    const/4 v2, -0x1

    move/from16 v27, v2

    goto :goto_1

    .line 80
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    goto :goto_2

    .line 96
    :cond_5
    aget-char v2, v4, v22

    .line 97
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v12

    .line 98
    if-eqz v12, :cond_b

    const/4 v3, 0x2

    move/from16 v26, v3

    .line 99
    :goto_6
    if-eqz v12, :cond_6

    add-int/lit8 v3, v22, 0x1

    aget-char v3, v4, v3

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 100
    :cond_6
    invoke-static {v2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v37

    .line 101
    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    :cond_7
    move/from16 v0, v27

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    const/4 v3, 0x2

    move/from16 v0, v37

    if-ne v0, v3, :cond_8

    add-int/lit8 v3, v19, 0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_c

    :cond_8
    const/4 v3, 0x0

    move/from16 v17, v3

    .line 102
    :goto_7
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v20

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    array-length v3, v3

    if-ge v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    aget v2, v3, v2

    move/from16 v18, v2

    .line 110
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float v2, v18, v2

    move/from16 v0, v37

    int-to-float v3, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v38, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v2, v38

    if-gtz v2, :cond_e

    const/16 v23, 0x0

    .line 112
    :goto_9
    cmp-long v2, v20, v14

    if-nez v2, :cond_9

    if-nez v17, :cond_f

    if-nez v10, :cond_9

    :goto_a
    if-nez v23, :cond_9

    if-eqz v8, :cond_15

    .line 113
    :cond_9
    if-nez v19, :cond_10

    .line 123
    :goto_b
    const/4 v11, 0x0

    move-wide/from16 v14, v20

    move/from16 v7, v19

    move/from16 v9, v22

    move/from16 v2, v23

    .line 130
    :goto_c
    add-float v11, v11, v18

    .line 131
    add-int v19, v19, v37

    .line 132
    add-int v3, v22, v26

    move v12, v3

    .line 133
    :goto_d
    move/from16 v0, v36

    if-ge v12, v0, :cond_a

    invoke-static {v4, v12}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v3

    if-lez v3, :cond_12

    :cond_a
    move v8, v2

    move/from16 v10, v17

    move/from16 v22, v12

    goto/16 :goto_4

    .line 98
    :cond_b
    const/4 v3, 0x1

    move/from16 v26, v3

    goto/16 :goto_6

    .line 101
    :cond_c
    const/4 v3, 0x1

    move/from16 v17, v3

    goto :goto_7

    .line 108
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v2, v4, v0, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v2

    move/from16 v18, v2

    goto :goto_8

    .line 110
    :cond_e
    const/16 v23, 0x1

    goto :goto_9

    .line 112
    :cond_f
    if-eqz v10, :cond_9

    goto :goto_a

    .line 116
    :cond_10
    if-eqz v10, :cond_11

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v2, v2, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    const/16 v3, 0x102

    aget v12, v2, v3

    .line 119
    :goto_e
    sub-int v8, v19, v7

    sub-int v10, v22, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v16}, Lcom/termux/view/TerminalRenderer;->drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V

    goto :goto_b

    .line 118
    :cond_11
    const/4 v12, 0x0

    goto :goto_e

    .line 136
    :cond_12
    aget-char v3, v4, v12

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x2

    :goto_f
    add-int/2addr v3, v12

    move v12, v3

    goto :goto_d

    :cond_13
    const/4 v3, 0x1

    goto :goto_f

    .line 142
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_15
    move v2, v8

    move/from16 v17, v10

    goto :goto_c

    :cond_16
    const/4 v3, -0x1

    const/4 v2, -0x1

    move/from16 v24, v2

    move/from16 v25, v3

    goto/16 :goto_3
.end method
