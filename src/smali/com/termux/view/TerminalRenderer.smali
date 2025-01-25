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
    .registers 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 34
    const/16 v1, 0x7f

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    .line 37
    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    .line 38
    iput-object p2, p0, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    .line 40
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p1, p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    .line 46
    add-int/2addr p1, v1

    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    .line 47
    const-string p1, "X"

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    :goto_4b
    iget-object v2, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    array-length v2, v2

    if-ge v1, v2, :cond_61

    int-to-char v2, v1

    .line 51
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 52
    iget-object v2, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    iget-object v3, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_61
    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V
    .registers 41

    .line 151
    move-object/from16 v0, p0

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeForeColor(J)I

    move-result v1

    .line 152
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v9

    .line 153
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeBackColor(J)I

    move-result v2

    and-int/lit8 v3, v9, 0x9

    if-eqz v3, :cond_18

    const/4 v11, 0x1

    goto :goto_19

    :cond_18
    const/4 v11, 0x0

    :goto_19
    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_1f

    const/4 v12, 0x1

    goto :goto_20

    :cond_1f
    const/4 v12, 0x0

    :goto_20
    and-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_26

    const/4 v13, 0x1

    goto :goto_27

    :cond_26
    const/4 v13, 0x0

    :goto_27
    and-int/lit8 v3, v9, 0x40

    if-eqz v3, :cond_2d

    const/4 v14, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v14, 0x0

    :goto_2e
    and-int/lit16 v3, v9, 0x100

    if-eqz v3, :cond_34

    const/4 v15, 0x1

    goto :goto_35

    :cond_34
    const/4 v15, 0x0

    :goto_35
    const/high16 v3, -0x1000000

    and-int v5, v1, v3

    const/16 v6, 0x8

    if-eq v5, v3, :cond_47

    if-eqz v11, :cond_45

    if-ltz v1, :cond_45

    if-ge v1, v6, :cond_45

    add-int/lit8 v1, v1, 0x8

    .line 163
    :cond_45
    aget v1, p3, v1

    :cond_47
    and-int v5, v2, v3

    if-eq v5, v3, :cond_4d

    .line 167
    aget v2, p3, v2

    :cond_4d
    and-int/lit8 v3, v9, 0x10

    if-eqz v3, :cond_53

    const/4 v3, 0x1

    goto :goto_54

    :cond_53
    const/4 v3, 0x0

    :goto_54
    xor-int v3, p14, v3

    if-eqz v3, :cond_5a

    move v5, v2

    goto :goto_5c

    :cond_5a
    move v5, v1

    move v1, v2

    :goto_5c
    move/from16 v2, p5

    int-to-float v2, v2

    .line 178
    iget v3, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float v2, v2, v3

    move/from16 v4, p6

    int-to-float v4, v4

    mul-float v16, v4, v3

    add-float v16, v2, v16

    div-float v3, p9, v3

    .line 183
    sub-float v17, v3, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move/from16 v18, v11

    float-to-double v10, v6

    const-wide v19, 0x3f847ae147ae147bL  # 0.01

    cmpl-double v6, v10, v19

    if-lez v6, :cond_95

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v6, v4, v3

    .line 185
    const/high16 v10, 0x3f800000  # 1.0f

    move-object/from16 v11, p1

    invoke-virtual {v11, v6, v10}, Landroid/graphics/Canvas;->scale(FF)V

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    mul-float v16, v16, v3

    move/from16 v23, v2

    move/from16 v6, v16

    const/4 v10, 0x1

    goto :goto_9c

    :cond_95
    move-object/from16 v11, p1

    move/from16 v23, v2

    move/from16 v6, v16

    const/4 v10, 0x0

    .line 191
    :goto_9c
    const/16 v2, 0x101

    aget v2, p3, v2

    if-eq v1, v2, :cond_c8

    .line 193
    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget v1, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v1, v1

    sub-float v1, p4, v1

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    int-to-float v2, v2

    add-float v3, v1, v2

    iget-object v4, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v16, v4

    move v4, v6

    move v11, v5

    move/from16 v5, p4

    move/from16 p5, v10

    const/16 v19, 0x8

    move v10, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_ce

    .line 191
    :cond_c8
    move v11, v5

    move/from16 p5, v10

    const/16 v19, 0x8

    move v10, v6

    .line 194
    :goto_ce
    const/4 v1, 0x2

    if-eqz v7, :cond_10f

    .line 198
    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    iget v3, v0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const-wide/high16 v3, 0x4010000000000000L  # 4.0

    const/4 v5, 0x1

    if-ne v8, v5, :cond_e8

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    double-to-float v2, v5

    goto :goto_fc

    :cond_e8
    if-ne v8, v1, :cond_fc

    float-to-double v5, v10

    sub-float v7, v10, v23

    const/high16 v8, 0x40400000  # 3.0f

    mul-float v7, v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v3, v5

    move v10, v3

    .line 202
    :cond_fc
    :goto_fc
    sub-float v2, p4, v2

    iget-object v3, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 p9, p1

    move/from16 p10, v23

    move/from16 p11, v2

    move/from16 p12, v10

    move/from16 p13, p4

    move-object/from16 p14, v3

    invoke-virtual/range {p9 .. p14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_10f
    and-int/lit8 v2, v9, 0x20

    if-nez v2, :cond_16d

    if-eqz v15, :cond_136

    .line 212
    shr-int/lit8 v2, v11, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 213
    shr-int/lit8 v3, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    .line 214
    shl-int/lit8 v2, v2, 0x10

    const/high16 v4, 0x1000000

    sub-int/2addr v2, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    and-int/lit16 v3, v11, 0xff

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int v5, v2, v3

    goto :goto_137

    .line 202
    :cond_136
    move v5, v11

    .line 218
    :goto_137
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v4, v18

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 219
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 220
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v13, :cond_14b

    const v2, -0x414ccccd  # -0.35f

    goto :goto_14c

    :cond_14b
    const/4 v2, 0x0

    :goto_14c
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 221
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 222
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget v1, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v1, v1

    sub-float v24, p4, v1

    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v1

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :cond_16d
    if-eqz p5, :cond_172

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_172
    return-void
.end method


# virtual methods
.method public final render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V
    .registers 55

    .line 59
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->isReverseVideo()Z

    move-result v16

    .line 60
    iget v0, v14, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int v11, p3, v0

    .line 61
    iget v10, v14, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorCol()I

    move-result v17

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorRow()I

    move-result v9

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->isShowingCursor()Z

    move-result v18

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v8

    .line 66
    iget-object v0, v14, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v7, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorStyle()I

    move-result v19

    if-eqz v16, :cond_38

    .line 70
    const/16 v0, 0x100

    aget v0, v7, v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v6, p2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3a

    .line 67
    :cond_38
    move-object/from16 v6, p2

    .line 72
    :goto_3a
    iget v0, v15, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v0, v0

    move/from16 v5, p3

    :goto_3f
    if-ge v5, v11, :cond_236

    .line 74
    iget v1, v15, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v1, v1

    add-float v20, v0, v1

    const/4 v0, -0x1

    if-ne v5, v9, :cond_4e

    if-eqz v18, :cond_4e

    move/from16 v4, v17

    goto :goto_4f

    :cond_4e
    const/4 v4, -0x1

    :goto_4f
    if-lt v5, v12, :cond_62

    if-gt v5, v13, :cond_62

    if-ne v5, v12, :cond_58

    move/from16 v1, p6

    goto :goto_59

    :cond_58
    const/4 v1, -0x1

    :goto_59
    if-ne v5, v13, :cond_5e

    move/from16 v2, p7

    goto :goto_60

    .line 80
    :cond_5e
    iget v2, v14, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    :goto_60
    move v3, v1

    goto :goto_64

    :cond_62
    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 83
    :goto_64
    invoke-virtual {v8, v5}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v1

    .line 84
    iget-object v12, v1, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 85
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    move/from16 p3, v5

    move/from16 v28, v13

    move-wide/from16 v26, v23

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v29, 0x0

    :goto_89
    const/16 v30, 0x102

    if-ge v0, v10, :cond_1e4

    .line 96
    aget-char v6, v12, v13

    .line 97
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v31

    move/from16 v32, v11

    const/16 v33, 0x1

    if-eqz v31, :cond_9c

    const/16 v34, 0x2

    goto :goto_9e

    :cond_9c
    const/16 v34, 0x1

    :goto_9e
    if-eqz v31, :cond_a8

    .line 99
    add-int/lit8 v31, v13, 0x1

    aget-char v11, v12, v31

    invoke-static {v6, v11}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 100
    :cond_a8
    invoke-static {v6}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v11

    if-lt v0, v3, :cond_b4

    if-le v0, v2, :cond_b1

    goto :goto_b4

    :cond_b1
    move/from16 v31, v10

    goto :goto_c4

    :cond_b4
    :goto_b4
    if-eq v4, v0, :cond_c2

    move/from16 v31, v10

    const/4 v10, 0x2

    if-ne v11, v10, :cond_c0

    add-int/lit8 v10, v0, 0x1

    if-ne v4, v10, :cond_c0

    goto :goto_c4

    :cond_c0
    const/4 v10, 0x0

    goto :goto_c5

    :cond_c2
    move/from16 v31, v10

    :goto_c4
    const/4 v10, 0x1

    .line 102
    :goto_c5
    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v35

    .line 108
    move-object/from16 v37, v1

    iget-object v1, v15, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    move/from16 v38, v2

    array-length v2, v1

    if-ge v6, v2, :cond_d7

    aget v1, v1, v6

    move/from16 v6, v34

    goto :goto_df

    :cond_d7
    iget-object v1, v15, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v6, v34

    invoke-virtual {v1, v12, v13, v6}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    :goto_df
    move/from16 v34, v1

    .line 110
    iget v1, v15, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float v1, v34, v1

    int-to-float v2, v11

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v39, 0x3f847ae147ae147bL  # 0.01

    cmpl-double v41, v1, v39

    if-lez v41, :cond_f8

    const/16 v39, 0x1

    goto :goto_fa

    :cond_f8
    const/16 v39, 0x0

    :goto_fa
    cmp-long v1, v35, v26

    if-nez v1, :cond_129

    if-ne v10, v5, :cond_129

    if-nez v39, :cond_129

    if-eqz v29, :cond_105

    goto :goto_129

    :cond_105
    move/from16 v44, p3

    move/from16 v41, v0

    move/from16 v42, v3

    move/from16 v43, v4

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v40, v9

    move/from16 v30, v11

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v15, v28

    move/from16 v39, v29

    move/from16 v29, v32

    const/16 v25, 0x2

    move/from16 v23, v6

    move-object/from16 v28, v12

    move/from16 v32, v13

    goto/16 :goto_19f

    :cond_129
    :goto_129
    if-nez v0, :cond_14a

    move/from16 v44, p3

    move/from16 v41, v0

    move/from16 v42, v3

    move/from16 v43, v4

    move/from16 v23, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v40, v9

    move/from16 v24, v10

    move/from16 v30, v11

    move/from16 v15, v28

    move/from16 v29, v32

    const/16 v25, 0x2

    move-object/from16 v28, v12

    move/from16 v32, v13

    goto :goto_196

    :cond_14a
    if-eqz v5, :cond_155

    .line 118
    iget-object v1, v14, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v1, v1, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v1, v1, v30

    move/from16 v29, v1

    goto :goto_157

    :cond_155
    const/16 v29, 0x0

    .line 119
    :goto_157
    sub-int v30, v0, v23

    sub-int v40, v13, v24

    move/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move/from16 v42, v3

    move-object v3, v7

    move/from16 v43, v4

    move/from16 v4, v20

    move/from16 v44, p3

    move/from16 v5, v23

    move/from16 v23, v6

    move/from16 v6, v30

    move-object/from16 v45, v7

    move/from16 v7, v24

    move-object/from16 v46, v8

    move/from16 v8, v40

    move/from16 v40, v9

    move/from16 v9, v25

    move/from16 v24, v10

    const/16 v25, 0x2

    move/from16 v10, v29

    move/from16 v30, v11

    move/from16 v29, v32

    move/from16 v11, v19

    move/from16 v32, v13

    move/from16 v15, v28

    move-object/from16 v28, v12

    move-wide/from16 v12, v26

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/termux/view/TerminalRenderer;->drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V

    :goto_196
    move/from16 v5, v24

    move/from16 v24, v32

    move-wide/from16 v26, v35

    move/from16 v0, v41

    const/4 v1, 0x0

    :goto_19f
    add-int v13, v32, v23

    :goto_1a1
    if-ge v13, v15, :cond_1ba

    .line 133
    move-object/from16 v2, v28

    invoke-static {v2, v13}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v3

    if-gtz v3, :cond_1bc

    .line 136
    aget-char v3, v2, v13

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1b5

    const/4 v11, 0x2

    goto :goto_1b6

    :cond_1b5
    const/4 v11, 0x1

    :goto_1b6
    add-int/2addr v13, v11

    move-object/from16 v28, v2

    goto :goto_1a1

    .line 119
    :cond_1ba
    move-object/from16 v2, v28

    .line 136
    :cond_1bc
    add-float v25, v1, v34

    add-int v1, v41, v30

    move-object/from16 v14, p1

    move-object/from16 v6, p2

    move/from16 v23, v0

    move v0, v1

    move-object v12, v2

    move/from16 v28, v15

    move/from16 v11, v29

    move/from16 v10, v31

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v29, v39

    move/from16 v9, v40

    move/from16 v3, v42

    move/from16 v4, v43

    move/from16 p3, v44

    move-object/from16 v7, v45

    move-object/from16 v8, v46

    move-object/from16 v15, p0

    goto/16 :goto_89

    :cond_1e4
    move/from16 v44, p3

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v40, v9

    move/from16 v31, v10

    move/from16 v29, v11

    move-object v2, v12

    move/from16 v32, v13

    if-eqz v5, :cond_1ff

    .line 142
    move-object/from16 v15, p1

    iget-object v0, v15, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v0, v0, v30

    move v10, v0

    goto :goto_202

    :cond_1ff
    move-object/from16 v15, p1

    const/4 v10, 0x0

    .line 143
    :goto_202
    sub-int v6, v31, v23

    sub-int v8, v32, v24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, v45

    move/from16 v4, v20

    move/from16 v5, v23

    move/from16 v7, v24

    move/from16 v9, v25

    move/from16 v11, v19

    move-wide/from16 v12, v26

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/termux/view/TerminalRenderer;->drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V

    add-int/lit8 v5, v44, 0x1

    move-object/from16 v6, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move-object v14, v15

    move/from16 v0, v20

    move/from16 v11, v29

    move/from16 v10, v31

    move/from16 v9, v40

    move-object/from16 v7, v45

    move-object/from16 v8, v46

    move-object/from16 v15, p0

    goto/16 :goto_3f

    :cond_236
    return-void
.end method
