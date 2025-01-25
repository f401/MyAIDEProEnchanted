.class public Lorg/voiddog/dragbackactivity/util/BlurUtil;
.super Ljava/lang/Object;
.source "BlurUtil.java"


# static fields
.field private static final MAX_BLUR_IMG_SIZE:I = 0x3e8

.field private static S_DRAW_BITMAP:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blurWithRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 6

    .line 85
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_9

    .line 86
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    goto :goto_11

    .line 89
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    :goto_11
    if-eqz p3, :cond_15

    move-object p3, p1

    goto :goto_23

    .line 98
    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 101
    :goto_23
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 104
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 105
    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 106
    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 107
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 108
    invoke-virtual {v0, p3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 109
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p3
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 43

    move/from16 v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_8

    move-object/from16 v2, p0

    goto :goto_12

    .line 134
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_12
    if-ge v0, v1, :cond_16

    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_16
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v11, v12

    .line 144
    new-array v14, v13, [I

    .line 145
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v4, v12, -0x1

    add-int v5, v0, v0

    add-int/lit8 v6, v5, 0x1

    .line 152
    new-array v7, v13, [I

    .line 153
    new-array v8, v13, [I

    .line 154
    new-array v9, v13, [I

    .line 156
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [I

    const/4 v13, 0x2

    add-int/2addr v5, v13

    shr-int/2addr v5, v1

    mul-int v5, v5, v5

    mul-int/lit16 v15, v5, 0x100

    .line 160
    new-array v13, v15, [I

    const/4 v1, 0x0

    :goto_4b
    if-ge v1, v15, :cond_54

    .line 162
    div-int v17, v1, v5

    aput v17, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 167
    :cond_54
    const/4 v1, 0x3

    filled-new-array {v6, v1}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    add-int/lit8 v5, v0, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_68
    if-ge v15, v12, :cond_180

    move-object/from16 v19, v2

    neg-int v2, v0

    move/from16 v28, v12

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move v12, v2

    const/4 v2, 0x0

    :goto_81
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v12, v0, :cond_e0

    .line 179
    move/from16 v31, v4

    move-object/from16 v32, v10

    const/4 v4, 0x0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v10, v17, v10

    aget v10, v14, v10

    .line 180
    add-int v33, v12, v0

    aget-object v33, v1, v33

    .line 181
    and-int v30, v10, v30

    shr-int/lit8 v30, v30, 0x10

    aput v30, v33, v4

    .line 182
    and-int v4, v10, v29

    shr-int/lit8 v4, v4, 0x8

    const/16 v16, 0x1

    aput v4, v33, v16

    .line 183
    and-int/lit16 v4, v10, 0xff

    const/4 v10, 0x2

    aput v4, v33, v10

    .line 184
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v4, v5, v4

    .line 185
    const/4 v10, 0x0

    aget v29, v33, v10

    mul-int v10, v29, v4

    add-int/2addr v2, v10

    .line 186
    const/4 v10, 0x1

    aget v30, v33, v10

    mul-int v10, v30, v4

    add-int v23, v23, v10

    .line 187
    const/4 v10, 0x2

    aget v33, v33, v10

    mul-int v4, v4, v33

    add-int v24, v24, v4

    if-lez v12, :cond_d3

    add-int v22, v22, v29

    add-int v21, v21, v30

    add-int v20, v20, v33

    goto :goto_d9

    :cond_d3
    add-int v25, v25, v29

    add-int v26, v26, v30

    add-int v27, v27, v33

    :goto_d9
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v31

    move-object/from16 v10, v32

    goto :goto_81

    :cond_e0
    move/from16 v31, v4

    move-object/from16 v32, v10

    move v10, v0

    move v4, v2

    const/4 v2, 0x0

    :goto_e7
    if-ge v2, v11, :cond_170

    .line 202
    aget v12, v13, v4

    aput v12, v7, v17

    .line 203
    aget v12, v13, v23

    aput v12, v8, v17

    .line 204
    aget v12, v13, v24

    aput v12, v9, v17

    .line 211
    sub-int v12, v10, v0

    add-int/2addr v12, v6

    rem-int/2addr v12, v6

    aget-object v12, v1, v12

    .line 213
    const/16 v33, 0x0

    aget v34, v12, v33

    .line 214
    const/16 v16, 0x1

    aget v33, v12, v16

    .line 215
    const/16 v35, 0x2

    aget v36, v12, v35

    if-nez v15, :cond_116

    .line 218
    add-int v35, v2, v0

    move-object/from16 v37, v13

    add-int/lit8 v13, v35, 0x1

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    aput v13, v32, v2

    goto :goto_118

    .line 215
    :cond_116
    move-object/from16 v37, v13

    .line 220
    :goto_118
    aget v13, v32, v2

    add-int v13, v18, v13

    aget v13, v14, v13

    and-int v35, v13, v30

    shr-int/lit8 v35, v35, 0x10

    .line 222
    const/16 v38, 0x0

    aput v35, v12, v38

    and-int v38, v13, v29

    shr-int/lit8 v38, v38, 0x8

    .line 223
    const/16 v16, 0x1

    aput v38, v12, v16

    and-int/lit16 v13, v13, 0xff

    .line 224
    const/16 v39, 0x2

    aput v13, v12, v39

    add-int v22, v22, v35

    add-int v21, v21, v38

    add-int v20, v20, v13

    sub-int v4, v4, v25

    add-int v4, v4, v22

    sub-int v23, v23, v26

    add-int v23, v23, v21

    sub-int v24, v24, v27

    add-int v24, v24, v20

    .line 234
    add-int/lit8 v10, v10, 0x1

    rem-int/2addr v10, v6

    .line 235
    rem-int v12, v10, v6

    aget-object v12, v1, v12

    .line 237
    const/4 v13, 0x0

    aget v35, v12, v13

    sub-int v25, v25, v34

    add-int v25, v25, v35

    .line 238
    const/4 v13, 0x1

    aget v34, v12, v13

    sub-int v26, v26, v33

    add-int v26, v26, v34

    .line 239
    const/4 v13, 0x2

    aget v12, v12, v13

    sub-int v27, v27, v36

    add-int v27, v27, v12

    sub-int v22, v22, v35

    sub-int v21, v21, v34

    sub-int v20, v20, v12

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, v37

    goto/16 :goto_e7

    :cond_170
    move-object/from16 v37, v13

    add-int v18, v18, v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v19

    move/from16 v12, v28

    move/from16 v4, v31

    move-object/from16 v10, v32

    goto/16 :goto_68

    :cond_180
    move-object/from16 v19, v2

    move/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v28, v12

    move-object/from16 v37, v13

    const/4 v4, 0x0

    :goto_18b
    if-ge v4, v11, :cond_2b9

    neg-int v2, v0

    mul-int v3, v2, v11

    move/from16 v21, v6

    move-object/from16 v22, v14

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move v6, v2

    move v14, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a2
    if-gt v6, v0, :cond_20a

    .line 253
    move/from16 v23, v11

    const/4 v11, 0x0

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int v24, v24, v4

    .line 255
    add-int v25, v6, v0

    aget-object v25, v1, v25

    .line 257
    aget v26, v7, v24

    aput v26, v25, v11

    .line 258
    aget v11, v8, v24

    const/16 v16, 0x1

    aput v11, v25, v16

    .line 259
    aget v11, v9, v24

    const/16 v26, 0x2

    aput v11, v25, v26

    .line 261
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v11, v5, v11

    .line 263
    aget v26, v7, v24

    mul-int v26, v26, v11

    add-int v10, v10, v26

    .line 264
    aget v26, v8, v24

    mul-int v26, v26, v11

    add-int v12, v12, v26

    .line 265
    aget v24, v9, v24

    mul-int v24, v24, v11

    add-int v13, v13, v24

    if-lez v6, :cond_1ed

    .line 268
    const/4 v11, 0x0

    aget v24, v25, v11

    add-int v18, v18, v24

    .line 269
    const/16 v16, 0x1

    aget v24, v25, v16

    add-int v20, v20, v24

    .line 270
    const/16 v24, 0x2

    aget v25, v25, v24

    add-int v2, v2, v25

    goto :goto_1fd

    .line 272
    :cond_1ed
    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v24, 0x2

    aget v26, v25, v11

    add-int v3, v3, v26

    .line 273
    aget v11, v25, v16

    add-int/2addr v15, v11

    .line 274
    aget v11, v25, v24

    add-int v17, v17, v11

    :goto_1fd
    move/from16 v11, v31

    if-ge v6, v11, :cond_203

    add-int v14, v14, v23

    :cond_203
    add-int/lit8 v6, v6, 0x1

    move/from16 v31, v11

    move/from16 v11, v23

    goto :goto_1a2

    :cond_20a
    move/from16 v23, v11

    move/from16 v11, v31

    move/from16 v24, v0

    move v14, v4

    const/4 v6, 0x0

    :goto_212
    move/from16 v25, v15

    move/from16 v15, v28

    if-ge v6, v15, :cond_2a3

    .line 285
    aget v26, v22, v14

    const/high16 v27, -0x1000000

    and-int v26, v26, v27

    aget v27, v37, v10

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v37, v12

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v37, v13

    or-int v26, v26, v27

    aput v26, v22, v14

    .line 292
    sub-int v26, v24, v0

    add-int v26, v26, v21

    rem-int v26, v26, v21

    aget-object v26, v1, v26

    .line 294
    const/16 v27, 0x0

    aget v28, v26, v27

    .line 295
    const/16 v16, 0x1

    aget v27, v26, v16

    .line 296
    const/16 v29, 0x2

    aget v30, v26, v29

    if-nez v4, :cond_250

    .line 299
    add-int v0, v6, v5

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v23

    aput v0, v32, v6

    .line 301
    :cond_250
    aget v0, v32, v6

    add-int/2addr v0, v4

    .line 303
    aget v29, v7, v0

    const/16 v31, 0x0

    aput v29, v26, v31

    .line 304
    aget v31, v8, v0

    const/16 v16, 0x1

    aput v31, v26, v16

    .line 305
    aget v0, v9, v0

    const/16 v33, 0x2

    aput v0, v26, v33

    add-int v18, v18, v29

    add-int v20, v20, v31

    add-int/2addr v2, v0

    sub-int/2addr v10, v3

    add-int v10, v10, v18

    sub-int v12, v12, v25

    add-int v12, v12, v20

    sub-int v13, v13, v17

    add-int/2addr v13, v2

    .line 315
    add-int/lit8 v24, v24, 0x1

    rem-int v24, v24, v21

    .line 316
    aget-object v0, v1, v24

    .line 318
    const/16 v26, 0x0

    aget v29, v0, v26

    sub-int v3, v3, v28

    add-int v3, v3, v29

    .line 319
    const/16 v16, 0x1

    aget v28, v0, v16

    sub-int v25, v25, v27

    add-int v25, v25, v28

    .line 320
    const/16 v27, 0x2

    aget v0, v0, v27

    sub-int v17, v17, v30

    add-int v17, v17, v0

    sub-int v18, v18, v29

    sub-int v20, v20, v28

    sub-int/2addr v2, v0

    add-int v14, v14, v23

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    move/from16 v28, v15

    move/from16 v15, v25

    goto/16 :goto_212

    :cond_2a3
    const/16 v16, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x2

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    move/from16 v31, v11

    move/from16 v28, v15

    move/from16 v6, v21

    move-object/from16 v14, v22

    move/from16 v11, v23

    goto/16 :goto_18b

    .line 330
    :cond_2b9
    move/from16 v23, v11

    move-object/from16 v22, v14

    move/from16 v15, v28

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v19

    move-object/from16 v4, v22

    move/from16 v6, v23

    move/from16 v9, v23

    move v10, v15

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v19
.end method

.method public static getBlurImage(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 6

    .line 115
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    .line 116
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 115
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, 0x3f800000  # 1.0f

    div-float/2addr v2, p1

    .line 118
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 119
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 120
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    const/4 p0, 0x1

    invoke-static {v0, p2, p0}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->fastBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBlurImgFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 8

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    const/16 v2, 0x3e8

    invoke-static {p0, v2, v2}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->getViewCacheWithMaxSize(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_e
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x3c

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 67
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 70
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 73
    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v3, 0x41400000  # 12.0f

    invoke-static {p0, v2, v3, v4}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->blurWithRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "获取blur所需时间: +"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BlurView"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static getBlurWhiteBgBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 10

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    invoke-static {p0}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->getBlurImgFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x5

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 40
    invoke-static {v2, p0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 44
    :cond_1c
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 48
    const p0, 0x66ffffff

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float v6, p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float v7, p0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "ImageUtil blur time: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BlurView"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static getViewCacheWithMaxSize(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 338
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_35

    .line 341
    :cond_15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 342
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 340
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 344
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 347
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    if-lez v4, :cond_97

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_49

    goto :goto_97

    :cond_49
    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v1

    .line 352
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v0, v0, p1

    float-to-int p2, v0

    mul-float v1, v1, p1

    float-to-int v0, v1

    .line 354
    sget-object v1, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    if-nez v1, :cond_64

    .line 355
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    sput-object p2, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    goto :goto_7f

    .line 358
    :cond_64
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_72

    sget-object v1, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    .line 359
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_7f

    .line 360
    :cond_72
    sget-object v1, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    sput-object p2, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    .line 365
    :cond_7f
    :goto_7f
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2}, Landroid/graphics/Canvas;-><init>()V

    .line 366
    sget-object v0, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 370
    invoke-virtual {p2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 371
    invoke-virtual {p0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 373
    sget-object p0, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    return-object p0

    :cond_97
    :goto_97
    const/4 p0, 0x0

    return-object p0
.end method
