.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F

.field public mType:C


# direct methods
.method constructor <init>(C[F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-object p2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iget-object v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 24

    const/4 v1, 0x0

    aget v6, p1, v1

    const/4 v1, 0x1

    aget v5, p1, v1

    const/4 v1, 0x2

    aget v3, p1, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    const/4 v2, 0x4

    aget v4, p1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    sparse-switch p3, :sswitch_data_0

    :goto_0
    :sswitch_0
    const/4 v7, 0x2

    move v11, v7

    :goto_1
    const/4 v7, 0x0

    move v12, v4

    move v13, v2

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    :goto_2
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_1f

    const/16 v2, 0x41

    move/from16 v0, p3

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x43

    move/from16 v0, p3

    if-eq v0, v2, :cond_1b

    const/16 v2, 0x48

    move/from16 v0, p3

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x51

    move/from16 v0, p3

    if-eq v0, v2, :cond_19

    const/16 v2, 0x56

    move/from16 v0, p3

    if-eq v0, v2, :cond_18

    const/16 v2, 0x61

    move/from16 v0, p3

    if-eq v0, v2, :cond_15

    const/16 v2, 0x63

    move/from16 v0, p3

    if-eq v0, v2, :cond_14

    const/16 v2, 0x68

    move/from16 v0, p3

    if-eq v0, v2, :cond_13

    const/16 v2, 0x71

    move/from16 v0, p3

    if-eq v0, v2, :cond_12

    const/16 v2, 0x76

    move/from16 v0, p3

    if-eq v0, v2, :cond_11

    const/16 v2, 0x4c

    move/from16 v0, p3

    if-eq v0, v2, :cond_10

    const/16 v2, 0x4d

    move/from16 v0, p3

    if-eq v0, v2, :cond_e

    const/16 v2, 0x53

    move/from16 v0, p3

    if-eq v0, v2, :cond_c

    const/16 v2, 0x54

    move/from16 v0, p3

    if-eq v0, v2, :cond_9

    const/16 v2, 0x6c

    move/from16 v0, p3

    if-eq v0, v2, :cond_8

    const/16 v2, 0x6d

    move/from16 v0, p3

    if-eq v0, v2, :cond_6

    const/16 v2, 0x73

    move/from16 v0, p3

    if-eq v0, v2, :cond_3

    const/16 v2, 0x74

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    :goto_3
    move v4, v12

    move v2, v13

    move v5, v14

    move v6, v15

    :goto_4
    add-int v7, v16, v11

    move/from16 p2, p3

    move v12, v4

    move v13, v2

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v2

    move v3, v4

    move v5, v2

    move v6, v4

    goto/16 :goto_0

    :sswitch_2
    const/4 v7, 0x4

    move v11, v7

    goto/16 :goto_1

    :sswitch_3
    const/4 v7, 0x1

    move v11, v7

    goto/16 :goto_1

    :sswitch_4
    const/4 v7, 0x6

    move v11, v7

    goto/16 :goto_1

    :sswitch_5
    const/4 v7, 0x7

    move v11, v7

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0x71

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x74

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x51

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x54

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    :cond_1
    sub-float v2, v15, v3

    sub-float v1, v14, v1

    move v3, v2

    :goto_5
    add-int/lit8 v2, v16, 0x0

    aget v4, p4, v2

    add-int/lit8 v5, v16, 0x1

    aget v6, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1, v4, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    aget v2, p4, v2

    add-float v4, v15, v2

    aget v2, p4, v5

    add-float/2addr v2, v14

    add-float/2addr v1, v14

    add-float/2addr v3, v15

    move v14, v2

    move v15, v4

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    goto :goto_5

    :cond_3
    const/16 v2, 0x63

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    const/16 v2, 0x73

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    const/16 v2, 0x43

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    const/16 v2, 0x53

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    :cond_4
    sub-float v1, v14, v1

    sub-float v2, v15, v3

    move v3, v1

    :goto_6
    add-int/lit8 v8, v16, 0x0

    aget v4, p4, v8

    add-int/lit8 v9, v16, 0x1

    aget v5, p4, v9

    add-int/lit8 v10, v16, 0x2

    aget v6, p4, v10

    add-int/lit8 v17, v16, 0x3

    aget v7, p4, v17

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v1, p4, v8

    add-float v5, v1, v15

    aget v1, p4, v9

    add-float v3, v1, v14

    aget v1, p4, v10

    add-float v2, v15, v1

    aget v1, p4, v17

    move v4, v3

    :goto_7
    add-float/2addr v14, v1

    move v15, v2

    move v1, v4

    move v3, v5

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    add-int/lit8 v2, v16, 0x0

    aget v4, p4, v2

    add-float/2addr v15, v4

    add-int/lit8 v4, v16, 0x1

    aget v5, p4, v4

    add-float/2addr v14, v5

    if-lez v16, :cond_7

    aget v2, p4, v2

    aget v4, p4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_3

    :cond_7
    aget v2, p4, v2

    aget v4, p4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->rMoveTo(FF)V

    :goto_8
    move v4, v15

    move v2, v14

    move v5, v14

    move v6, v15

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v2, v16, 0x0

    aget v4, p4, v2

    add-int/lit8 v5, v16, 0x1

    aget v6, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v2, p4, v2

    add-float/2addr v15, v2

    aget v2, p4, v5

    :goto_9
    add-float/2addr v14, v2

    goto/16 :goto_3

    :cond_9
    const/16 v2, 0x71

    move/from16 v0, p2

    if-eq v0, v2, :cond_a

    const/16 v2, 0x74

    move/from16 v0, p2

    if-eq v0, v2, :cond_a

    const/16 v2, 0x51

    move/from16 v0, p2

    if-eq v0, v2, :cond_a

    const/16 v2, 0x54

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    :cond_a
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v15

    sub-float v15, v2, v3

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v14

    sub-float v14, v2, v1

    :cond_b
    add-int/lit8 v1, v16, 0x0

    aget v2, p4, v1

    add-int/lit8 v3, v16, 0x1

    aget v4, p4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v6, p4, v1

    aget v5, p4, v3

    move v4, v12

    move v2, v13

    move v1, v14

    move v3, v15

    goto/16 :goto_4

    :cond_c
    const/16 v2, 0x63

    move/from16 v0, p2

    if-eq v0, v2, :cond_d

    const/16 v2, 0x73

    move/from16 v0, p2

    if-eq v0, v2, :cond_d

    const/16 v2, 0x43

    move/from16 v0, p2

    if-eq v0, v2, :cond_d

    const/16 v2, 0x53

    move/from16 v0, p2

    if-ne v0, v2, :cond_20

    :cond_d
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v15

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v14

    sub-float/2addr v3, v1

    :goto_a
    add-int/lit8 v8, v16, 0x0

    aget v4, p4, v8

    add-int/lit8 v9, v16, 0x1

    aget v5, p4, v9

    add-int/lit8 v10, v16, 0x2

    aget v6, p4, v10

    add-int/lit8 v14, v16, 0x3

    aget v7, p4, v14

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v3, p4, v8

    aget v1, p4, v9

    aget v15, p4, v10

    aget v14, p4, v14

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v2, v16, 0x0

    aget v15, p4, v2

    add-int/lit8 v4, v16, 0x1

    aget v14, p4, v4

    if-lez v16, :cond_f

    aget v2, p4, v2

    aget v4, p4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3

    :cond_f
    aget v2, p4, v2

    aget v4, p4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto/16 :goto_8

    :cond_10
    add-int/lit8 v2, v16, 0x0

    aget v4, p4, v2

    add-int/lit8 v5, v16, 0x1

    aget v6, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    aget v15, p4, v2

    aget v14, p4, v5

    goto/16 :goto_3

    :cond_11
    add-int/lit8 v2, v16, 0x0

    const/4 v4, 0x0

    aget v5, p4, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v2, p4, v2

    goto/16 :goto_9

    :cond_12
    add-int/lit8 v1, v16, 0x0

    aget v2, p4, v1

    add-int/lit8 v3, v16, 0x1

    aget v4, p4, v3

    add-int/lit8 v6, v16, 0x2

    aget v5, p4, v6

    add-int/lit8 v7, v16, 0x3

    aget v8, p4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    aget v1, p4, v1

    add-float v5, v1, v15

    aget v1, p4, v3

    add-float v3, v1, v14

    aget v1, p4, v6

    add-float v2, v15, v1

    aget v1, p4, v7

    move v4, v3

    goto/16 :goto_7

    :cond_13
    add-int/lit8 v2, v16, 0x0

    aget v4, p4, v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v2, p4, v2

    add-float/2addr v15, v2

    goto/16 :goto_3

    :cond_14
    add-int/lit8 v1, v16, 0x0

    aget v2, p4, v1

    add-int/lit8 v1, v16, 0x1

    aget v3, p4, v1

    add-int/lit8 v8, v16, 0x2

    aget v4, p4, v8

    add-int/lit8 v9, v16, 0x3

    aget v5, p4, v9

    add-int/lit8 v10, v16, 0x4

    aget v6, p4, v10

    add-int/lit8 v17, v16, 0x5

    aget v7, p4, v17

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v1, p4, v8

    add-float v5, v1, v15

    aget v1, p4, v9

    add-float v3, v1, v14

    aget v1, p4, v10

    add-float v2, v15, v1

    aget v1, p4, v17

    move v4, v3

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v17, v16, 0x5

    aget v1, p4, v17

    add-int/lit8 v18, v16, 0x6

    aget v2, p4, v18

    add-int/lit8 v3, v16, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v16, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v16, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v16, 0x3

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_16

    const/4 v9, 0x1

    :goto_b
    add-int/lit8 v3, v16, 0x4

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_17

    const/4 v10, 0x1

    :goto_c
    add-float v4, v1, v15

    add-float v5, v2, v14

    move-object/from16 v1, p0

    move v2, v15

    move v3, v14

    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v1, p4, v17

    add-float v2, v15, v1

    aget v1, p4, v18

    add-float/2addr v1, v14

    move v7, v1

    move v8, v2

    :goto_d
    move v4, v12

    move v2, v13

    move v1, v7

    move v3, v8

    move v5, v7

    move v6, v8

    goto/16 :goto_4

    :cond_16
    const/4 v9, 0x0

    goto :goto_b

    :cond_17
    const/4 v10, 0x0

    goto :goto_c

    :cond_18
    add-int/lit8 v2, v16, 0x0

    aget v4, p4, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Landroid/graphics/Path;->lineTo(FF)V

    aget v14, p4, v2

    move v4, v12

    move v2, v13

    move v5, v14

    move v6, v15

    goto/16 :goto_4

    :cond_19
    add-int/lit8 v1, v16, 0x0

    aget v2, p4, v1

    add-int/lit8 v4, v16, 0x1

    aget v3, p4, v4

    add-int/lit8 v5, v16, 0x2

    aget v6, p4, v5

    add-int/lit8 v7, v16, 0x3

    aget v8, p4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v3, p4, v1

    aget v1, p4, v4

    aget v15, p4, v5

    aget v14, p4, v7

    move v4, v12

    move v2, v13

    move v5, v14

    move v6, v15

    goto/16 :goto_4

    :cond_1a
    add-int/lit8 v2, v16, 0x0

    aget v4, p4, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/graphics/Path;->lineTo(FF)V

    aget v15, p4, v2

    move v4, v12

    move v2, v13

    move v5, v14

    move v6, v15

    goto/16 :goto_4

    :cond_1b
    add-int/lit8 v1, v16, 0x0

    aget v2, p4, v1

    add-int/lit8 v1, v16, 0x1

    aget v3, p4, v1

    add-int/lit8 v8, v16, 0x2

    aget v4, p4, v8

    add-int/lit8 v9, v16, 0x3

    aget v5, p4, v9

    add-int/lit8 v10, v16, 0x4

    aget v6, p4, v10

    add-int/lit8 v14, v16, 0x5

    aget v7, p4, v14

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v15, p4, v10

    aget v14, p4, v14

    aget v3, p4, v8

    aget v1, p4, v9

    move v4, v12

    move v2, v13

    move v5, v14

    move v6, v15

    goto/16 :goto_4

    :cond_1c
    add-int/lit8 v17, v16, 0x5

    aget v4, p4, v17

    add-int/lit8 v18, v16, 0x6

    aget v5, p4, v18

    add-int/lit8 v1, v16, 0x0

    aget v6, p4, v1

    add-int/lit8 v1, v16, 0x1

    aget v7, p4, v1

    add-int/lit8 v1, v16, 0x2

    aget v8, p4, v1

    add-int/lit8 v1, v16, 0x3

    aget v1, p4, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1d

    const/4 v9, 0x1

    :goto_e
    add-int/lit8 v1, v16, 0x4

    aget v1, p4, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e

    const/4 v10, 0x1

    :goto_f
    move-object/from16 v1, p0

    move v2, v15

    move v3, v14

    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v2, p4, v17

    aget v1, p4, v18

    move v7, v1

    move v8, v2

    goto/16 :goto_d

    :cond_1d
    const/4 v9, 0x0

    goto :goto_e

    :cond_1e
    const/4 v10, 0x0

    goto :goto_f

    :cond_1f
    const/4 v2, 0x0

    aput v15, p1, v2

    const/4 v2, 0x1

    aput v14, p1, v2

    const/4 v2, 0x2

    aput v3, p1, v2

    const/4 v2, 0x3

    aput v1, p1, v2

    const/4 v1, 0x4

    aput v12, p1, v1

    const/4 v1, 0x5

    aput v13, p1, v1

    return-void

    :cond_20
    move v3, v14

    move v2, v15

    goto/16 :goto_a

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_0
        0x56 -> :sswitch_3
        0x5a -> :sswitch_1
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0x76 -> :sswitch_3
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 60

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v20, v0

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move-wide/from16 v0, p5

    neg-double v4, v0

    mul-double v26, v4, v22

    mul-double v28, p7, v24

    mul-double v30, v4, v24

    mul-double v32, p7, v22

    move/from16 v0, v20

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v34, p17, v4

    mul-double v4, v6, v30

    mul-double v8, v2, v32

    add-double/2addr v4, v8

    mul-double v6, v6, v26

    mul-double v2, v2, v28

    sub-double/2addr v6, v2

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_0

    add-double v10, p15, v34

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v14, p5, v22

    mul-double/2addr v14, v12

    add-double v14, v14, p1

    mul-double v16, v28, v2

    sub-double v16, v14, v16

    mul-double v14, p5, v24

    mul-double/2addr v14, v12

    add-double v14, v14, p3

    mul-double v18, v32, v2

    add-double v14, v14, v18

    mul-double v18, v26, v2

    mul-double v36, v28, v12

    sub-double v18, v18, v36

    mul-double v2, v2, v30

    mul-double v12, v12, v32

    add-double/2addr v12, v2

    sub-double v2, v10, p15

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    div-double v36, v2, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->tan(D)D

    move-result-wide v36

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v38, 0x4008000000000000L    # 3.0

    mul-double v38, v38, v36

    mul-double v36, v36, v38

    const-wide/high16 v38, 0x4010000000000000L    # 4.0

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v36, v36, v38

    mul-double v2, v2, v36

    const-wide/high16 v36, 0x4008000000000000L    # 3.0

    div-double v36, v2, v36

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    mul-double v2, v6, v36

    add-double v2, v2, p9

    double-to-float v3, v2

    mul-double v4, v4, v36

    add-double v4, v4, p11

    double-to-float v4, v4

    mul-double v6, v36, v18

    sub-double v6, v16, v6

    double-to-float v5, v6

    mul-double v6, v36, v12

    sub-double v6, v14, v6

    double-to-float v6, v6

    move-wide/from16 v0, v16

    double-to-float v7, v0

    double-to-float v8, v14

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-wide/from16 p15, v10

    move-wide v4, v12

    move-wide/from16 p11, v14

    move-wide/from16 p9, v16

    move-wide/from16 v6, v18

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 48

    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move/from16 v0, p1

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p2

    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p5

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v12, v22

    mul-double v4, v14, v24

    add-double/2addr v2, v4

    div-double v6, v2, v8

    move/from16 v0, p1

    neg-float v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p6

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v24

    mul-double v4, v14, v22

    add-double/2addr v2, v4

    div-double v18, v2, v10

    move/from16 v0, p3

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v0, p4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v22

    mul-double v20, v4, v24

    add-double v2, v2, v20

    div-double v20, v2, v8

    move/from16 v0, p3

    neg-float v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v24

    mul-double v4, v4, v22

    add-double/2addr v2, v4

    div-double v26, v2, v10

    sub-double v2, v6, v20

    sub-double v4, v18, v26

    add-double v28, v6, v20

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v30, v18, v26

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    mul-double v32, v2, v2

    mul-double v34, v4, v4

    add-double v32, v32, v34

    const-wide/16 v34, 0x0

    cmpl-double v34, v32, v34

    if-nez v34, :cond_0

    const-string v2, "PathParser"

    const-string v3, " Points are coincident"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    div-double v34, v34, v32

    const-wide/high16 v36, 0x3fd0000000000000L    # 0.25

    sub-double v34, v34, v36

    const-wide/16 v36, 0x0

    cmpg-double v36, v34, v36

    if-gez v36, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Points are too far apart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v32

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "PathParser"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v4

    double-to-float v2, v2

    mul-float v7, p5, v2

    mul-float v8, p6, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    goto :goto_0

    :cond_1
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    mul-double v34, v2, v32

    mul-double v2, v32, v4

    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    sub-double v2, v28, v2

    add-double v4, v30, v34

    :goto_1
    sub-double v18, v18, v4

    sub-double/2addr v6, v2

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    sub-double v6, v26, v4

    sub-double v20, v20, v2

    move-wide/from16 v0, v20

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v20, v6, v18

    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    move/from16 v0, p9

    if-eq v0, v6, :cond_2

    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-lez v6, :cond_5

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v6

    :cond_2
    :goto_3
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v4, v10

    mul-double v4, v2, v22

    mul-double v26, v6, v24

    sub-double v4, v4, v26

    mul-double v2, v2, v24

    mul-double v6, v6, v22

    add-double/2addr v6, v2

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    goto/16 :goto_0

    :cond_3
    add-double v2, v2, v28

    sub-double v4, v30, v34

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v6

    goto :goto_3
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7

    const/4 v0, 0x6

    new-array v2, v0, [F

    const/16 v1, 0x6d

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-object v3, p0, v0

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v0

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v2, v1, v3, v4}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    aget-object v1, p0, v0

    iget-char v1, v1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .registers 8

    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v1, v3

    iget-object v3, p2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
