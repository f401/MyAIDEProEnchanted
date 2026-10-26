.class public Lorg/voiddog/dragbackactivity/util/BlurUtil;
.super Ljava/lang/Object;
.source "BlurUtil.java"


# static fields
.field private static final MAX_BLUR_IMG_SIZE:I = 0x3e8

.field private static S_DRAW_BITMAP:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blurWithRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 85
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    move-object v1, v0

    .line 89
    :goto_0
    if-eqz p3, :cond_1

    move-object v0, p1

    .line 101
    :goto_1
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 104
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 105
    invoke-virtual {v4, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 106
    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 107
    invoke-virtual {v4, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 108
    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 109
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 38

    if-eqz p2, :cond_0

    move-object/from16 v2, p0

    .line 134
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ge v0, v3, :cond_1

    const/4 v2, 0x0

    .line 330
    :goto_1
    return-object v2

    .line 134
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v5, v9

    .line 144
    new-array v3, v10, [I

    .line 145
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v24, v5, -0x1

    add-int/lit8 v25, v9, -0x1

    add-int v4, p1, p1

    add-int/lit8 v26, v4, 0x1

    .line 152
    new-array v0, v10, [I

    move-object/from16 v27, v0

    .line 153
    new-array v0, v10, [I

    move-object/from16 v28, v0

    .line 154
    new-array v0, v10, [I

    move-object/from16 v29, v0

    .line 156
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v0, v6, [I

    move-object/from16 v30, v0

    add-int/lit8 v4, v4, 0x2

    shr-int/lit8 v4, v4, 0x1

    mul-int v6, v4, v4

    mul-int/lit16 v7, v6, 0x100

    .line 160
    new-array v0, v7, [I

    move-object/from16 v31, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_2

    .line 162
    div-int v8, v4, v6

    aput v8, v31, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 167
    :cond_2
    const/4 v4, 0x3

    move/from16 v0, v26

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    add-int/lit8 v32, p1, 0x1

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    move/from16 v22, v6

    move/from16 v23, v7

    :goto_3
    move/from16 v0, v22

    if-ge v0, v9, :cond_7

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v17, v0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, p1

    if-gt v0, v1, :cond_4

    .line 179
    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v18, v18, v13

    aget v18, v3, v18

    .line 180
    add-int v19, v17, p1

    aget-object v19, v4, v19

    .line 181
    const/16 v20, 0x0

    const/high16 v21, 0xff0000

    and-int v21, v21, v18

    shr-int/lit8 v21, v21, 0x10

    aput v21, v19, v20

    .line 182
    const/16 v20, 0x1

    const v21, 0xff00

    and-int v21, v21, v18

    shr-int/lit8 v21, v21, 0x8

    aput v21, v19, v20

    .line 183
    const/16 v20, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aput v18, v19, v20

    .line 184
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v18, v32, v18

    .line 185
    const/16 v20, 0x0

    aget v20, v19, v20

    mul-int v21, v20, v18

    add-int v16, v16, v21

    .line 186
    const/16 v21, 0x1

    aget v21, v19, v21

    mul-int v33, v21, v18

    add-int v14, v14, v33

    .line 187
    const/16 v33, 0x2

    aget v19, v19, v33

    mul-int v18, v18, v19

    add-int v15, v15, v18

    if-lez v17, :cond_3

    add-int v6, v6, v20

    add-int v7, v7, v21

    add-int v11, v11, v19

    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_3
    add-int v8, v8, v20

    add-int v10, v10, v21

    add-int v12, v12, v19

    goto :goto_5

    :cond_4
    const/16 v20, 0x0

    move/from16 v17, p1

    move/from16 v18, v8

    move/from16 v19, v10

    move/from16 v21, v12

    :goto_6
    move/from16 v0, v20

    if-ge v0, v5, :cond_6

    .line 202
    aget v8, v31, v16

    aput v8, v27, v13

    .line 203
    aget v8, v31, v14

    aput v8, v28, v13

    .line 204
    aget v8, v31, v15

    aput v8, v29, v13

    .line 211
    sub-int v8, v17, p1

    add-int v8, v8, v26

    rem-int v8, v8, v26

    aget-object v8, v4, v8

    .line 213
    const/4 v10, 0x0

    aget v33, v8, v10

    .line 214
    const/4 v10, 0x1

    aget v34, v8, v10

    .line 215
    const/4 v10, 0x2

    aget v35, v8, v10

    if-nez v22, :cond_5

    .line 218
    add-int v10, v20, p1

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v30, v20

    .line 215
    :cond_5
    aget v10, v30, v20

    add-int v10, v10, v23

    aget v10, v3, v10

    const/high16 v12, 0xff0000

    and-int/2addr v12, v10

    shr-int/lit8 v12, v12, 0x10

    .line 222
    const/16 v36, 0x0

    aput v12, v8, v36

    const v36, 0xff00

    and-int v36, v36, v10

    shr-int/lit8 v36, v36, 0x8

    .line 223
    const/16 v37, 0x1

    aput v36, v8, v37

    and-int/lit16 v10, v10, 0xff

    .line 224
    const/16 v37, 0x2

    aput v10, v8, v37

    add-int/2addr v6, v12

    add-int v7, v7, v36

    add-int v8, v11, v10

    sub-int v10, v16, v18

    add-int v16, v10, v6

    sub-int v10, v14, v19

    add-int/2addr v10, v7

    sub-int v11, v15, v21

    add-int v12, v11, v8

    .line 234
    add-int/lit8 v11, v17, 0x1

    rem-int v17, v11, v26

    .line 235
    rem-int v11, v17, v26

    aget-object v11, v4, v11

    .line 237
    const/4 v14, 0x0

    aget v14, v11, v14

    sub-int v15, v18, v33

    add-int v18, v15, v14

    .line 238
    const/4 v15, 0x1

    aget v15, v11, v15

    sub-int v19, v19, v34

    add-int v19, v19, v15

    .line 239
    const/16 v33, 0x2

    aget v11, v11, v33

    sub-int v21, v21, v35

    add-int v21, v21, v11

    sub-int/2addr v6, v14

    sub-int/2addr v7, v15

    sub-int v11, v8, v11

    add-int/lit8 v8, v13, 0x1

    add-int/lit8 v20, v20, 0x1

    move v13, v8

    move v14, v10

    move v15, v12

    goto/16 :goto_6

    :cond_6
    add-int v7, v23, v5

    add-int/lit8 v6, v22, 0x1

    move/from16 v22, v6

    move/from16 v23, v7

    goto/16 :goto_3

    :cond_7
    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    if-ge v0, v5, :cond_d

    move/from16 v0, p1

    neg-int v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    mul-int v6, v10, v5

    const/16 v20, 0x0

    const/16 v17, 0x0

    :goto_8
    move/from16 v0, p1

    if-gt v10, v0, :cond_a

    .line 253
    const/4 v14, 0x0

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int v14, v14, v19

    .line 255
    add-int v18, v10, p1

    aget-object v18, v4, v18

    .line 257
    const/16 v21, 0x0

    aget v22, v27, v14

    aput v22, v18, v21

    .line 258
    const/16 v21, 0x1

    aget v22, v28, v14

    aput v22, v18, v21

    .line 259
    const/16 v21, 0x2

    aget v22, v29, v14

    aput v22, v18, v21

    .line 261
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v21

    sub-int v21, v32, v21

    .line 263
    aget v22, v27, v14

    mul-int v22, v22, v21

    add-int v11, v11, v22

    .line 264
    aget v22, v28, v14

    mul-int v22, v22, v21

    add-int v12, v12, v22

    .line 265
    aget v14, v29, v14

    mul-int v14, v14, v21

    add-int/2addr v13, v14

    if-lez v10, :cond_9

    .line 268
    const/4 v14, 0x0

    aget v14, v18, v14

    add-int/2addr v7, v14

    .line 269
    const/4 v14, 0x1

    aget v14, v18, v14

    add-int/2addr v8, v14

    .line 270
    const/4 v14, 0x2

    aget v14, v18, v14

    add-int v20, v20, v14

    .line 274
    :goto_9
    move/from16 v0, v25

    if-ge v10, v0, :cond_8

    add-int/2addr v6, v5

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 272
    :cond_9
    const/4 v14, 0x0

    aget v14, v18, v14

    add-int v17, v17, v14

    .line 273
    const/4 v14, 0x1

    aget v14, v18, v14

    add-int v16, v16, v14

    .line 274
    const/4 v14, 0x2

    aget v14, v18, v14

    add-int/2addr v15, v14

    goto :goto_9

    :cond_a
    const/4 v14, 0x0

    move v6, v7

    move/from16 v10, p1

    move/from16 v18, v19

    :goto_a
    if-ge v14, v9, :cond_c

    .line 285
    aget v7, v3, v18

    const/high16 v21, -0x1000000

    and-int v7, v7, v21

    aget v21, v31, v11

    shl-int/lit8 v21, v21, 0x10

    or-int v7, v7, v21

    aget v21, v31, v12

    shl-int/lit8 v21, v21, 0x8

    or-int v7, v7, v21

    aget v21, v31, v13

    or-int v7, v7, v21

    aput v7, v3, v18

    .line 292
    sub-int v7, v10, p1

    add-int v7, v7, v26

    rem-int v7, v7, v26

    aget-object v7, v4, v7

    .line 294
    const/16 v21, 0x0

    aget v21, v7, v21

    .line 295
    const/16 v22, 0x1

    aget v22, v7, v22

    .line 296
    const/16 v23, 0x2

    aget v23, v7, v23

    if-nez v19, :cond_b

    .line 299
    add-int v24, v14, v32

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    mul-int v24, v24, v5

    aput v24, v30, v14

    .line 301
    :cond_b
    aget v24, v30, v14

    add-int v24, v24, v19

    .line 303
    aget v33, v27, v24

    const/16 v34, 0x0

    aput v33, v7, v34

    .line 304
    aget v34, v28, v24

    const/16 v35, 0x1

    aput v34, v7, v35

    .line 305
    aget v24, v29, v24

    const/16 v35, 0x2

    aput v24, v7, v35

    add-int v6, v6, v33

    add-int v7, v8, v34

    add-int v8, v20, v24

    sub-int v11, v11, v17

    add-int/2addr v11, v6

    sub-int v12, v12, v16

    add-int/2addr v12, v7

    sub-int/2addr v13, v15

    add-int/2addr v13, v8

    .line 315
    add-int/lit8 v10, v10, 0x1

    rem-int v10, v10, v26

    .line 316
    aget-object v20, v4, v10

    .line 318
    const/16 v24, 0x0

    aget v24, v20, v24

    sub-int v17, v17, v21

    add-int v17, v17, v24

    .line 319
    const/16 v21, 0x1

    aget v21, v20, v21

    .line 320
    const/16 v33, 0x2

    aget v20, v20, v33

    sub-int v15, v15, v23

    add-int v15, v15, v20

    sub-int v6, v6, v24

    sub-int v7, v7, v21

    sub-int v20, v8, v20

    add-int v18, v18, v5

    add-int/lit8 v14, v14, 0x1

    sub-int v8, v16, v22

    add-int v16, v8, v21

    move v8, v7

    goto/16 :goto_a

    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 330
    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_1
.end method

.method public static getBlurImage(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

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

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    .line 118
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 119
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 120
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 121
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->fastBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBlurImgFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7

    const/16 v0, 0x3e8

    const/4 v6, 0x1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    invoke-static {p0, v0, v0}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->getViewCacheWithMaxSize(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x3c

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 67
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 70
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 73
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v1, v0, v4, v6}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->blurWithRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6blur\u6240\u9700\u65f6\u95f4: +"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BlurView"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBlurWhiteBgBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v1, 0x0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 38
    invoke-static {p0}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->getBlurImgFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 40
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .line 44
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 48
    const v2, 0x66ffffff

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageUtil blur time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BlurView"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    move-object v6, v0

    goto :goto_0
.end method

.method private static getViewCacheWithMaxSize(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 338
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 341
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 342
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

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
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 347
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v2, v0, v3

    if-lez v2, :cond_2

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_3

    .line 373
    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 347
    :cond_3
    int-to-float v2, p1

    div-float/2addr v2, v0

    int-to-float v3, p2

    div-float/2addr v3, v1

    .line 352
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 354
    sget-object v3, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 355
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    .line 365
    :cond_4
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 366
    sget-object v1, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 370
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 371
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 373
    sget-object v0, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 358
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_6

    sget-object v3, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    .line 359
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 360
    :cond_6
    sget-object v3, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
